
string
  strlen
    https://sourceware.org/git/?p=glibc.git;a=blob;f=string/strlen.c;h=5f22ce95097d4090c6c32fc7cf6c2ef9cf6e86a8;hb=24c0bf7a76ecec65aca0dbce1f7ebb8f68425dc2
    http://stackoverflow.com/questions/2372315/how-to-implement-strlen-as-fast-as-possible
    https://fredmameri.wordpress.com/2011/04/24/on-the-performance-of-strlen/
  compress
    https://github.com/Ed-von-Schleck/shoco
  compare
    http://mgronhol.github.io/fast-strcmp/
  blank
    https://github.com/SamSaffron/fast_blank/blob/master/ext/fast_blank/fast_blank.c
  encoders
    https://code.google.com/p/stringencoders/
  utf8
    https://github.com/google/gumbo-parser/blob/master/src/utf8.c
    https://github.com/clibs/cutef8/blob/master/utf8.c

memory
  http://www.cs.cmu.edu/afs/cs/academic/class/15213-f10/www/lectures/17-allocation-basic.pdf
  https://github.com/htian/malloc-lab/blob/master/memlib.c
  https://github.com/lattera/glibc/blob/master/malloc/malloc.c
  https://github.com/lattera/glibc/blob/master/malloc/malloc.h
  https://github.com/lattera/glibc/tree/master/malloc
  https://github.com/jemalloc/jemalloc/tree/dev/src
  ftp://g.oswego.edu/pub/misc/malloc.c
  malloc
    https://github.com/ned14/nedmalloc/blob/master/nedmalloc.c
    http://danluu.com/malloc-tutorial/
    http://www.inf.udec.cl/~leo/Malloc_tutorial.pdf
  thread malloc
    http://jamesgolick.com/2013/5/19/how-tcmalloc-works.html
  http://jamesgolick.com/2013/5/15/memory-allocators-101.html
  http://goog-perftools.sourceforge.net/doc/tcmalloc.html
  http://g.oswego.edu/dl/html/malloc.html

thread

file
  read
    http://opensource.apple.com/source/Libc/Libc-167/stdio.subproj/fread.c
    https://github.com/lattera/glibc/blob/a2f34833b1042d5d8eeb263b4cf4caaea138c4ad/libio/iofread.c
    use system call
    http://stackoverflow.com/questions/584142/what-is-the-difference-between-read-and-fread
    > If you are willing to go beyond the C spec into OS specific code, memory mapping is generally considered the most efficient way.
    > For Posix, check out mmap and for Windows check out OpenFileMapping, CreateFileMapping and MapViewOfFile
    > The major reason to choose memory mapped file I/O is performance.
    > When a process is started, the operating system uses a memory mapped file to bring the executable file, along with any loadable modules, into memory for execution.
    http://sublimetext.userecho.com/topic/98149-use-memory-mapped-files-for-opening-and-viewing-large-files-eg-1gb/
    http://pubs.opengroup.org/onlinepubs/009695399/functions/read.html
  open name, flags fid Connect to open file
  create name, mode fid Creates file and connect to open file
  read fid, buffer, count count Reads bytes for open file
  write fid, buffer, count count Writes bytes to open file
  lseek fid, offset, mode offset Moves position of next read or write
  close fid code Disconnect open file
  unlink name code Delete named file 
  http://www2.cs.uregina.ca/~hamilton/courses/330/notes/unix/filesyscalls.html
  feof(), ferror(), fgetc(), fopen(), getc(), gets(), scanf()
  https://github.com/clibs/file/blob/master/src/file.c
  watch
    https://github.com/clibs/entr

tcp
  port scanning
    https://github.com/robertdavidgraham/masscan

buffer
  https://github.com/clibs/buffer

bytes
  https://github.com/clibs/bytes/blob/master/bytes.c

logger
  https://github.com/clibs/logger/blob/master/logger.h

mmap database
  https://github.com/clibs/lmdb
  http://en.wikipedia.org/wiki/Lightning_Memory-Mapped_Database

libuv
  https://github.com/clibs/uv

timer
  http://stackoverflow.com/questions/6749621/high-resolution-timer-in-linux
  http://man7.org/linux/man-pages/man2/clock_gettime.2.html
  http://blog.stalkr.net/2010/03/nanosecond-time-measurement-with.html

graph
  https://github.com/clibs/graph/blob/develop/src/graph.c

hash
  https://github.com/clibs/hash/blob/master/hash.c

benchmark
  https://github.com/clibs/bench/blob/master/bench.h

cli
  https://github.com/clibs/readline
  http://stackoverflow.com/questions/19797609/strlen-in-nasm-linux
  http://stackoverflow.com/questions/7854706/reading-filename-from-argv-via-x86-assembly
  http://forum.nasm.us/index.php?topic=342.0

int
  https://github.com/clibs/int/blob/master/int.c

format
  https://github.com/jpbonn/coremark_lm32/blob/master/ee_printf.c

file stream
  https://gcc.gnu.org/onlinedocs/libstdc++/libstdc++-html-USERS-4.0/fstream-source.html
  fast write large files in small chunks
    http://stackoverflow.com/questions/11563963/writing-a-binary-file-in-c-very-fast/11564931#11564931
