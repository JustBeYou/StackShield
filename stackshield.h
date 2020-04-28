#pragma once

#include <stdbool.h>
#include <stddef.h>

struct stackshield_options {
    bool enabled;
    bool mangle_pointers;
    bool disable_on_deep_recursivity;
    bool allow_callstack_resize;
};

struct stackshield_guard {
    // options
    struct stackshield_options options;

    // the callstack
    size_t size;
    size_t idx;
    size_t *callstack;

    // secret value for mangling pointers
    size_t *secret;

    // recursivity counter
    size_t recursivity_cnt;
};

extern size_t stackshield_get_old_rip();

void stackshield_init(bool mangle_pointers,
                      bool disable_on_deep_recursivity,
                      bool allow_callstack_resize);
void stackshield_func_enter(size_t address);
void stackshield_func_exit(size_t address);

#define stackshield_load(x, y, z)  \
    stackshield_init(x, y, z); \
    stackshield_get_old_rip(); \
    stackshield_func_enter(0); \
    stackshield_func_exit(0); \

