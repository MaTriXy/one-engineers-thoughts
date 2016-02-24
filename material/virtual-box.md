
keyword hypervisor
  info http://en.wikipedia.org/wiki/Hypervisor
keyword emulation
keyword unikernel
keyword nonkernel
keyword Instruction Set Architecture (ISA)
keyword bytecode
  description Executable run in software rather than on hardware (machine code).
  source http://en.wikipedia.org/wiki/Bytecode
keyword ring
  abbr r0
  source http://en.wikipedia.org/wiki/Protection_ring
  note
    In ring 0, you can do anything to the computer.
topic x86 ring architecture
  help http://duartes.org/gustavo/blog/post/cpu-rings-privilege-and-protection/
topic MSR
  info http://en.wikipedia.org/wiki/Model-specific_register

info http://en.wikipedia.org/wiki/VirtualBox
info http://en.wikipedia.org/wiki/Virtualization
info http://en.wikipedia.org/wiki/X86_virtualization
info http://en.wikipedia.org/wiki/Dynamic_recompilation

source https://github.com/parrot/parrot
source https://github.com/LuaDist/lua/blob/master/src/lvm.c
source https://github.com/openstack
source https://github.com/qemu/qemu
source https://www.virtualbox.org/browser/vbox/trunk
source http://dlc-cdn.sun.com/virtualbox/4.3.22/UserManual.pdf
source https://www.virtualbox.org/wiki/Source_code_organization

tutorial http://luaforge.net/docman/83/98/ANoFrillsIntroToLua51VMInstructions.pdf
tutorial http://rsms.me/2012/10/14/sol-a-sunny-little-virtual-machine.html
tutorial http://en.wikipedia.org/wiki/Stack_machine
  note LLVM is a stack machine, an IR that gets compiled to a register machine.
tutorial http://en.wikipedia.org/wiki/Register_machine

note hypervisor is bare metal
note hosted is not bare metal
note LLVM IR is a low-level RISC-like virtual instruction set
note Lua uses a register-based bytecode virtual machine.

info http://www.icemanind.com/VMCS.pdf
info http://en.wikibooks.org/wiki/Creating_a_Virtual_Machine/Register_VM_in_C
info http://stackoverflow.com/questions/448673/how-do-emulators-work-and-how-are-they-written
info https://thegrandmotherblogg.wordpress.com/2014/08/27/fml-a-silly-virtual-machine/
info http://courses.cms.caltech.edu/cs11/material/c/mike/lab8/lab8.html
info http://www.intel.com/content/www/us/en/processors/architectures-software-developer-manuals.html
info http://www.intel.com/Assets/en_US/PDF/manual/253668.pdf
info http://www.vmware.com/files/pdf/software_hardware_tech_x86_virt.pdf
info http://www.hardwaresecrets.com/printpage/Everything-You-Need-to-Know-About-the-Intel-Virtualization-Technology/263
info http://stackoverflow.com/questions/25787390/do-the-x86-virtualization-instruction-sets-vt-x-amd-v-have-alternate-uses
good http://microsym.com/editor/assets/386intel.pdf
info http://www.naic.edu/~phil/software/intel/319433-014.pdf
info http://www.vmware.com/files/pdf/VMware_paravirtualization.pdf
info http://en.wikipedia.org/wiki/Binary_translation
info http://en.wikipedia.org/wiki/Instruction_set_simulator
info http://en.wikipedia.org/wiki/Full_virtualization

paper http://www.ittc.ku.edu/~kulkarni/teaching/EECS768/slides/chapter2.pdf
paper http://www.utdallas.edu/~muratk/courses/cloud11f_files/smith-vm-overview.pdf
paper http://ojs.academypublisher.com/index.php/jsw/article/viewFile/jsw080612751280/7055
paper http://www.cs.toronto.edu/~peter/feiner_asplos_2012.pdf
paper http://www.cse.iitd.ac.in/~sbansal/pubs/btkernel.pdf
paper http://www.cse.iitd.ac.in/~sbansal/theses/piyus.pdf
paper Valgrind: a framework for heavyweight dynamic binary instrumentation
paper http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.20.3017&rep=rep1&type=pdf
paper http://cs.uwec.edu/~buipj/teaching/cs.491.s13/static/pdf/02_eucalyptus_open_source_cloud_computing_system.pdf
paper http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.205.9705&rep=rep1&type=pdf
paper ftp://213.176.96.142/ACM467b83f4-ae2d-20140924053205.pdf
paper http://gftg.sdf.org/attach/mscthesis.pdf
paper The Scalable Commutativity Rule: Designing Scalable Software for Multicore Processors
paper https://www.academia.edu/8980937/Full_Abstraction_for_Signal_Flow_Graphs

paper good
  http://www.complang.tuwien.ac.at/schani/papers/bintrans.pdf

note Cloud computing is currently based on hardware virtualization wherein a host operating system provides a virtual machine interface nearly identical to that of physical hardware to guest operating systems.
note Formally, virtualization involves the construction of an isomorphism from guest state to host state.

vbox
  install https://www.virtualbox.org/browser/vbox/trunk/src/VBox/Installer/darwin/VBoxKEXTs/VirtualBoxStartup.sh
  start http://code.metager.de/source/xref/virtualbox/src/VBox/Frontends/VBoxAutostart/VBoxAutostart-posix.cpp
  start http://code.metager.de/source/xref/virtualbox/src/VBox/Frontends/VBoxAutostart/VBoxAutostartUtils.cpp
  cli https://github.com/quiquetux/jokte-ba-as/blob/master/src/VBox/Frontends/VBoxManage/VBoxManage.cpp
  cli start https://github.com/quiquetux/jokte-ba-as/blob/2599d312ac47a61677f6e1a91dcfe2a7b5e5da0f/src/VBox/Frontends/VBoxManage/VBoxManageMisc.cpp#L465
  com getter https://github.com/quiquetux/jokte-ba-as/blob/2599d312ac47a61677f6e1a91dcfe2a7b5e5da0f/src/VBox/Main/src-client/SessionImpl.cpp#L177
  cli https://github.com/quiquetux/jokte-ba-as/blob/2599d312ac47a61677f6e1a91dcfe2a7b5e5da0f/src/VBox/Main/src-client/ConsoleImpl.cpp
  cli https://github.com/quiquetux/jokte-ba-as/blob/2599d312ac47a61677f6e1a91dcfe2a7b5e5da0f/src/VBox/Main/src-client/ConsoleImpl.cpp#L429
  event handling https://github.com/quiquetux/jokte-ba-as/blob/2599d312ac47a61677f6e1a91dcfe2a7b5e5da0f/src/VBox/Main/src-all/EventImpl.cpp
  input https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/master/src/VBox/Main/src-client/GuestProcessImpl.cpp#L1457
  write https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/master/src/VBox/Main/src-client/GuestProcessImpl.cpp#L1884
  assembly https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/tree/master/src/VBox/Runtime/common/asm
  memory https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/b9657cd5351cf17432b664009cc25bb480dc64c1/src/VBox/Runtime/generic/mempool-generic.cpp
  kernel https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/master/src/VBox/Runtime/r0drv/darwin/the-darwin-kernel.h
  memory https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/master/src/VBox/Runtime/r0drv/memobj-r0drv.cpp
  schedule https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/master/src/VBox/Runtime/r3/darwin/sched-darwin.cpp
  memory https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/master/src/VBox/Runtime/generic/mempool-generic.cpp
  string https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/master/src/VBox/Runtime/common/asn1/asn1-ut-string.cpp
  table https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/master/src/VBox/Runtime/common/misc/handletable.h
  math https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/tree/master/src/VBox/Runtime/common/math
  start darwin https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/master/src/VBox/Additions/common/VBoxGuest/VBoxGuest-darwin.cpp#L811
  runtime https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/tree/master/include/iprt
    desc IPRT, a portable runtime library which abstracts file access, threading, string manipulation, etc. Whenever VirtualBox accesses host operating features, it does so through this library for cross-platform portability.
  assembly impl
    https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/master/include/iprt/asm-amd64-x86.h
  code execution
    https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/master/src/VBox/VMM/VMMR3/EM.cpp
  memory
    https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/master/src/VBox/VMM/VMMR3/MMHyper.cpp

notes
  - it pretty much takes over control over a large part of your computer, executing a complete OS with its own set of guest processes, drivers, and devices inside this VM process, but the host OS does not notice much of this. Whatever the VM does, it's just another process in your host OS.
  - This is why the service process (VBoxSVC) is needed: it keeps track of which VMs are running and what state they're in.
  - from the perspective of the host OS, a virtual machine is just another process
  - Even though there is a ring-0 driver that must be loaded in the host OS for VirtualBox to work, this ring-0 driver does less than you may think. It is only needed for a few specific tasks, such as:
    - allocating physical memory for the VM;
    - saving and restoring CPU registers and descriptor tables when a host interrupt occurs while a guest's ring-3 code is executing (e.g. when the host OS wants to reschedule);
    - when switching from host ring-3 to guest context;
    - enable or disable VT-x etc. support.
  - the host's ring-0 driver does not mess with your OS's scheduling or process management.
  source https://groups.google.com/forum/#!topic/vmkernelnewbies/jvsdbIBTogU
  - Host context (HC) means that the host OS is in control of everything including virtual memory. In the VirtualBox sources, the term "HC" will normally refer to the host's ring-3 context only. We only use host ring-0 (R0) context with our new Intel VT-x (Vanderpool) support, which we'll leave out of the picture for now (but see below).
  - http://www.virtuatopia.com/images/0/03/Guest_os_diagram.jpg
  internals https://www.virtualbox.org/manual/ch10.html
  - EM (Execution Manager), controls execution of guest code.
    + https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/master/src/VBox/VMM/VMMR3/EM.cpp
  - REM (Recompiled Execution Monitor), provides software emulation of CPU instructions.
    + https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/master/src/VBox/VMM/VMMAll/REMAll.cpp
  - PGM (Page Manager), a component controlling guest paging.
    + https://github.com/mdaniel/virtualbox-org-svn-vbox-trunk/blob/master/src/VBox/VMM/VMMR3/PGM.cpp
  - VMM (Virtual Machine Monitor), the heart of the hypervisor.

note VirtualBox is a Type 2 hypervisor
