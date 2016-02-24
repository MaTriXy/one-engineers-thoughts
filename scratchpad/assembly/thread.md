
- http://stackoverflow.com/questions/980999/what-does-multicore-assembly-language-look-like
- http://programmers.stackexchange.com/questions/186526/when-would-you-need-hundreds-of-thousands-of-threads

Each logical thread has its own register set, so writing:
```
mov edx, 0
```
will only update EDX for the currently running thread. 

---

## OS threads vs. Process threads.

- http://programmers.stackexchange.com/questions/173575/what-is-a-thread-pool
- http://en.wikipedia.org/wiki/Thread_%28computing%29
- http://en.wikipedia.org/wiki/Green_threads
- http://docs.julialang.org/en/latest/manual/control-flow/#man-tasks
- http://en.wikipedia.org/wiki/Coroutine
- http://stackoverflow.com/questions/3089841/how-can-i-create-a-parallel-stack-and-run-a-coroutine-on-it
- https://github.com/thezerobit/green-threads/blob/master/src/green-threads.lisp
- http://c9x.me/art/gthreads/mach.html
- http://probablydance.com/2013/02/20/handmade-coroutines-for-windows/
- http://stackoverflow.com/questions/3324643/processes-threads-green-threads-protothreads-fibers-coroutines-whats-the
- http://programmers.stackexchange.com/questions/254140/is-there-a-difference-between-fibers-coroutines-and-green-threads-and-if-that-i
- http://programmers.stackexchange.com/questions/222642/are-go-langs-goroutine-pools-just-green-threads
- http://eli.thegreenplace.net/2011/09/06/stack-frame-layout-on-x86-64/

"Coroutines" are "green threads" that are threads implemented in "user space", which means basically in the app. So if there is any IO waiting, you can execute in between that time.

This architecture features a set of 16 registers (rax, rbx, rcx, rdx, rsi, rdi, rbp, rsp, rip, r8, r9, r10, r12, r13, r14, r15) which can store 64-bits numbers.

Goroutines is implemented as pthreads in gccgo

> System and C calls are non blocking for the scheduler (all system calls, not only the ones supporting multiplexed I/Os in event loops). Green threads implementations could block the whole process when a blocking system call was done.

It must do that by running system calls in another OS thread?

> Segmented stacks. In Go, there is no need to provide a maximum stack size for the goroutine. The stack grows incrementally as needed. One consequence is a goroutine does not require much memory (4KB-8KB), so a huge number of them can be happily spawned. Goroutine usage can therefore be pervasive.

- http://golang.org/src/runtime/chan.h
- http://stackoverflow.com/questions/19621149/how-are-go-channels-implemented
- https://docs.google.com/document/d/1yIAYmbvL3JxOKOjuCyon7JhW4cSv1wy5hC0ApeGMV9s/pub
- https://code.google.com/p/go/source/browse/src/pkg/runtime/chan.c?spec=svnc3d455c18420506948edac3813f46bce43dbb226&r=c3d455c18420506948edac3813f46bce43dbb226
- https://github.com/tav/go/blob/master/src/pkg/runtime/chan.c
- http://en.wikipedia.org/wiki/Channel_%28programming%29
- http://stackoverflow.com/questions/4522387/how-can-i-emulate-gos-channels-with-haskell?rq=1
- https://github.com/tylertreat/chan

Compile this with gcc to assembly to see output:

https://github.com/tylertreat/chan/blob/master/src/chan.c
