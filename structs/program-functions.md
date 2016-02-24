
## Basic functions

```coffee
function length type # sizeof type, sizeof expression
```

## Byte functions

```coffee
function compare sequence(byte), sequence(byte) # bcmp
```

## [String functions](http://en.wikibooks.org/wiki/C_Programming/Strings)

```coffee
function concatenate string, string
function concatenate string, part string
function copy string, strings
function copy string, part string
function compute length, string
function compare string, string
function strcmpi
function strchr
function strrchr
function strstr
function strrstr
function strdup
function strlwr
function strupr
function strrev
function strset
function strnset
function strtok
function strcoll
function strcspn
function strerror
function strpbrk
function strspn
function strstr
function strtok
function strxfrm
```

## [String Memory functions](http://stackoverflow.com/questions/27705053/memcpy-implementation-in-linux-kernel)

```coffee
function memchr
function memcmp
function memcpy
  operand a, string
  operand b, string
  # char *dst = s1;
  #    const char *src = s2;
  #    /* Loop and copy.  */
  #    while (n-- != 0)
  #        *dst++ = *src++;
  #    return s1;
function memmove
function memset
```

## Memory functions

```coffee
# allocates count * size
# void *calloc(size_t nmemb, size_t size);
# void free(void *ptr);

function allocate memory # void *malloc(size_t size);
  input amount, in bytes

function reallocate memory # void *realloc(void *ptr, size_t size);
  input memory, as pointer
  input amount, in bytes
```
