
https://en.wikipedia.org/wiki/High-level_emulation
https://en.wikipedia.org/wiki/UltraHLE

> This class of binary translation is mainly concerned with the field of computer architecture. It involves the modeling of hardware components, like a CPU, system chips (DMA, timers, interrupt controller, bus controller etc), and various subsystems (audio, video, I/O) in software. The combination of these software components is often referred to as a virtual machine.

> Emulation now works by reading each instruction from the binary as the original machine would do, execute it in some way, and set the virtual machine to a similar state as the genuine machine would be in after executing this instruction. Note the use of ‘similar’ state instead of ‘exact’ state. Depending on the apps we target, we can choose to ignore a part of the machine state which is not being used by the binary. This is what we call the accuracy of the emulation.

> mostly matching the conventions and output of its high-accuracy counterpart, Low Level Emulation (LLE) audio

https://dolphin-emu.org/blog/2014/11/12/the-rise-of-hle-audio/

> A formal definition of virtualization was made by Popek
and Goldberg [21]. They define a VM to be an efficient,
isolated duplicate of a real machine. https://www.isti.tu-berlin.de/fileadmin/fg214/liebergeld/spsm03-lange.pdf

> Commercial automated source-to-source translation tools prove inadequate due to the structural and idiomatic differences in how functionalities are expressed across major platforms.
