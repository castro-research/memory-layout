# Introduction

At university, we learn about Memory Layout in C. Concepts such as Heap memory, Stack memory, BSS, etc. Whenever we discuss this type of allocation, we often see images like this:

![image](https://github.com/user-attachments/assets/0896ebb9-fc80-408b-b749-837ef9cc73ff)
*Memory Layout of C Program - [Source](https://www.hackerearth.com/practice/notes/memory-layout-of-c-program)*

But then some questions arise on this topic. The main question is: do we have a clear view of how this is done at a logical and physical level?

Since we're talking about allocation layout, what other models exist? What is really stored in the heap and stack? Can we do this in a virtual lab and explore it? What are the limits?

This repository will serve as the results of these investigations.

# Starting from some point

To begin with, my first question was:

So who implements the stack, heap, bss, etc.?

While reading the OS book [1], a passage mentioned:

'In virtual memory, when a process starts, the operating system allocates memory blocks at least for the code, data, and stack, which are released when the process ends. In real memory with variable partitions, something similar happens; when you want to start running a program, it's necessary to allocate memory for the new partition, which is released when the program ends.'

We can then imagine that as soon as a process starts, we see this image:

![image](https://github.com/user-attachments/assets/ebab1e1d-94c2-4f4e-a6ef-0ecb3795cc4d)

References

1 - Operating Systems by José Alves Marques | Paulo Ferreira | Carlos Ribeiro | Luís Veiga | Rodrigo Rodrigues"












