#include <stdio.h>
#include <string.h>

// https://sourceware.org/git/?p=glibc.git;a=blob;f=stdio-common/vfprintf.c;h=fc370e8cbc4e9652a2ed377b1c6f2324f15b1bf9;hb=3321010338384ecdc6633a8b032bb0ed6aa9b19a
printf (const char *format, ...)
{
   va_list arg;
   int done;

   va_start (arg, format);
   done = vfprintf (stdout, format, arg);
   va_end (arg);

   return done;
}
