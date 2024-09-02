.data
    // Here is the global data
    // Define 64-bit values
    value1: .quad 10 
    value2: .quad 20 // .quad (or quadword) is used to define a 64-bit constant.

.text
    .global _main // Here is the executable code

_main:
    // Load the address of value1 into register x0
    ldr x0, =value1
    // Dereference the address in x0 to load the actual value of value1 into x0
    ldr x0, [x0]

    // Subtract 8 bytes from the stack pointer (sp) to allocate space on the stack
    sub sp, sp, #8
    // Store the value in x0 (which is value1) onto the stack at the address pointed to by sp
    str x0, [sp]

    // Load the address of value2 into register x1
    ldr x1, =value2
    // Dereference the address in x1 to load the actual value of value2 into x1
    ldr x1, [x1]
    // Subtract 8 bytes from the stack pointer (sp) to allocate space on the stack
    sub sp, sp, #8
    // Store the value in x1 (which is value2) onto the stack at the address pointed to by sp
    str x1, [sp]

    // The stack pointer (sp) now points to the top of the stack
    // Load the value at the top of the stack into register x2 (this is value2)
    ldr x2, [sp]
    // Add 8 to sp to move the stack pointer up, effectively "removing" value2 from the stack
    add sp, sp, #8
    // Now, load the new top of the stack into register x3 (this is value1)
    ldr x3, [sp]
    // Add 8 to sp to move the stack pointer up, effectively "removing" value1 from the stack
    add sp, sp, #8

    // Set up for the system call to exit the program
    // 93 is the syscall number for exit in ARM64
    mov x8, #93
    // x0 holds the exit code (0 means success)
    mov x0, #0
    // Make the syscall
    svc 0