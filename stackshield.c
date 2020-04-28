#include <sys/mman.h>
#include <stddef.h>
#include <stdbool.h>
#include <sys/random.h>
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

#include "stackshield.h"

const size_t pagesize = 0x1000;
const size_t callstack_default_size = (pagesize - sizeof(struct stackshield_guard)) / sizeof(size_t);
struct stackshield_guard *guard;

__attribute__((constructor))
static void stackshield_at_load() {
    //puts("[INFO] StackShield is loading...");
    stackshield_init(true, true, true);
    //puts("[OK]   Your process is now secure!");
}

size_t xor_with_secret(size_t address) {
    if (!guard->options.mangle_pointers) return address;
    return address ^ *guard->secret;
}

void stackshield_init(bool mangle_pointers, 
                      bool disable_on_deep_recursivity,
                      bool allow_callstack_resize) {

    // alloc a page for the guard structure
    void *memory = mmap(NULL, pagesize, PROT_READ | PROT_WRITE, MAP_ANONYMOUS | MAP_PRIVATE, 0, 0);
    assert(memory != NULL);
    guard = memory;
    
    guard->options.enabled                     = true;
    guard->options.mangle_pointers             = mangle_pointers;
    guard->options.disable_on_deep_recursivity = disable_on_deep_recursivity;
    guard->options.allow_callstack_resize      = allow_callstack_resize;

    // prepare the callstack
    guard->idx       = 0;
    guard->size      = callstack_default_size;
    guard->callstack = memory + sizeof(struct stackshield_guard); 

    // generate the secret key if it is the case
    if (mangle_pointers) {
        // get a page just for the secret value (it will be marked read-only)
        guard->secret = mmap(NULL, pagesize, PROT_READ | PROT_WRITE, MAP_ANONYMOUS | MAP_PRIVATE, 0, 0);
        assert(guard->secret != NULL);
        size_t ret = getrandom(guard->secret, sizeof(size_t), 0);
        assert(ret == sizeof(size_t)); 
        // TODO: revert this!
        //memcpy(guard->secret, "BBBBBBBB", 8);
        // let the first byte be constant just for the challenge
        //((char*)(guard->secret))[0] = 0;

        mprotect(guard->secret, pagesize, PROT_READ);
    } else {
        guard->secret = NULL;
    }

    guard->recursivity_cnt = 0;
}

void stackshield_func_enter(size_t address) {
    //printf("Enter %zx\n", address);
    if (!guard->options.enabled) return ;
    if (guard->idx == guard->size) {
        if (guard->options.allow_callstack_resize) {
            // not implemented yet
            fprintf(stderr, "[ERROR] Can't resize the callstack\n");
            fprintf(stderr, "FEATURE NOT IMPLEMENTED!\n");
            exit(-1);
        } else {
            // increase the index, but can't save the address
            guard->idx++;
        }
    } else {
        guard->callstack[guard->idx++] = address;
    }
}

void stackshield_func_exit(size_t address) {
    //printf("Exit %zx\n", address);
    if (!guard->options.enabled) return ;
    if (guard->idx >= guard->size) {
        // can't check the callstack :(
        // this could lead to execution hijack
        guard->idx--;
    } else {
        if (guard->callstack[--guard->idx] != xor_with_secret(address)) {
            fprintf(stderr, "\n--- StackShield ---\n");
            fprintf(stderr, "[ERROR] Return address overwrite detected\n");
            fprintf(stderr, "Original IP: %zx\tActual IP: %zx\n", xor_with_secret(guard->callstack[guard->idx]), 
                                                                  xor_with_secret(address));
            exit(-1);
        }
    }
}
