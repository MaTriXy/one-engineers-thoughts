
https://en.wikipedia.org/wiki/Scheduling_(computing)

source
  https://github.com/bunkat/schedule
  https://github.com/bunkat/later
  https://github.com/radlab/sparrow
  https://github.com/jontore/LinSched

> The goal of the GPU command scheduler is to queue and
dispatch non-preemptive GPU command groups in accordance
with task priorities.

schedule
priority
task
queue

>  To this end, TimeGraph
contains a wait queue to stall tasks. It also manages a
GPU-online list, a list of pointers to the GPU command
groups currently executing on the GPU.

queue wait
queue live

queue waiting
queue running

Event driven is using an interrupt! So the current process goes back to the parent process.

> a job queuing system. It is required for an efficient hardware resource usage and for easy accessibility of the hardware from the user’s point of view

> Time sharing relies on timer interrupts and is thus
transparent to processes.
