
## Basic algorithms

```coffee
algorithm length type # sizeof type, sizeof expression
```

## Byte algorithms

```coffee
algorithm compare sequence(byte), sequence(byte) # bcmp
```

## [String algorithms](http://en.wikibooks.org/wiki/C_Programming/Strings)

```coffee
algorithm concatenate string, string
algorithm concatenate string, part string
algorithm copy string, strings
algorithm copy string, part string
algorithm compute length, string
algorithm compare string, string
algorithm strcmpi
algorithm strchr
algorithm strrchr
algorithm strstr
algorithm strrstr
algorithm strdup
algorithm strlwr
algorithm strupr
algorithm strrev
algorithm strset
algorithm strnset
algorithm strtok
algorithm strcoll
algorithm strcspn
algorithm strerror
algorithm strpbrk
algorithm strspn
algorithm strstr
algorithm strtok
algorithm strxfrm
```

## [String Memory algorithms](http://stackoverflow.com/questions/27705053/memcpy-implementation-in-linux-kernel)

```coffee
algorithm memchr
algorithm memcmp
algorithm memcpy
  operand a, string
  operand b, string
  # char *dst = s1;
  #    const char *src = s2;
  #    /* Loop and copy.  */
  #    while (n-- != 0)
  #        *dst++ = *src++;
  #    return s1;
algorithm memmove
algorithm memset
```

## Memory algorithms

```coffee
algorithm deallocate memory

algorithm allocate memory
  input amount, in bytes

algorithm reallocate memory
  input memory, as pointer
  input amount, in bytes
```

```coffee
alias free, deallocate # void free(void *ptr);
alias use, allocate # void *malloc(size_t size);
# void *realloc(void *ptr, size_t size);
```

## Comparison algorithms

```coffee

```

## Filtering algorithms

```coffee
```

## [Collection algorithms](https://lodash.com/docs)

## Struct storing algorithms

The simplest one is directly mapping a type to memory, without taking into account how that type is being used in an algorithm.

```coffee
algorithm allocate struct
  step loop through properties
  step allocate memory for property
```

So to do this one, need to implement the algorithm for memory first.
