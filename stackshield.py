#!/usr/bin/python

from sys import argv
from re import findall, sub

if len(argv) != 2:
    print ("Usage: ./stackshield.py <filename>")
    exit()

filename = argv[1]
with open(filename, "r") as f:
    content = f.read()

FUNCTION_ENTER = """
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
"""
FUNCTION_EXIT  = """
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
"""

content = content.replace('.cfi_startproc\n', FUNCTION_ENTER)
content = content.replace('ret\n', FUNCTION_EXIT)

#MATCH_FUNCTIONS = r"\.type[ \t]+([a-zA-Z_0-9]+),[ \t]+\@function"
#MATCH_LABEL = r"({}:[\s\S]*)(\.cfi_startproc)([\s\S]*)(ret)"
#functions = findall(MATCH_FUNCTIONS, content)
#
#for func in functions:
#    TO_MATCH = MATCH_LABEL.format(func)
#    for i in findall(TO_MATCH, content)[0]:
#        print (i)
#        print "-------------------------------"
#    #print sub(TO_MATCH, r"\1AAAAAAAAAAAAAAAAAA\n\2AAAAAAAAAAAAAAA\n\3AAAAAAAAAAAAAA\n\4AAAAAAAAAAAAAAAAA\n\n", content)
#    #content = sub(TO_MATCH, r"\1{}\3{}".format(FUNCTION_ENTER, FUNCTION_EXIT), content)

with open(filename, 'w') as f:
    f.write(content)

raw_input()
