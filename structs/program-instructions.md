
Instructions are algorithms implemented by a machine. In that sense, from a programming perspective they are the "atoms".

```
instruction return
instruction branch
instruction switch
instruction select
instruction call a

instruction add integer, integer
instruction add vector(integer), vector(integer)
instruction add point(floating), point(floating)
instruction add vector(point(floating)), vector(point(floating))

instruction subtract integer, integer
instruction subtract vector(integer), vector(integer)
instruction subtract point(floating), point(floating)
instruction subtract vector(point(floating)), vector(point(floating))

instruction multiply integer, integer
instruction multiply vector(integer), vector(integer)
instruction multiply point(floating), point(floating)
instruction multiply vector(point(floating)), vector(point(floating))

instruction divide integer(signed), integer(signed)
instruction divide vector(integer(signed)), vector(integer(signed))
instruction divide integer(unsigned), integer(unsigned)
instruction divide vector(integer(unsigned)), vector(integer(unsigned))
instruction divide point(floating), point(floating)
instruction divide vector(point(floating)), vector(point(floating))

instruction remainder(unsigned), integer, integer
instruction remainder(signed), integer, integer

instruction shift left integer, integer(unsigned)
instruction shift right integer, integer(unsigned)

instruction and integer, integer
instruction and vector(integer), vector(integer)

instruction or a, b
instruction xor a, b

instruction allocate memory, alignment
instruction read memory
instruction write memory

instruction fence
instruction truncate
instruction extend zero

instruction cast integer, float
instruction cast float, integer

instruction compare
instruction phi
```

Building on top of these are:

```
instruction swap a, b
instruction min a, b
instruction max a, b
instruction eq a, b
instruction ne a, b
instruction ugt a, b
instruction uge a, b
instruction ult a, b
instruction ule a, b
instruction sgt a, b
instruction sge a, b
instruction slt a, b
instruction sle a, b
```

others

```
instruction copy memory
instruction move memory
```

Other specialized hardware functions, sometimes called "intrinsics" include:

```
instruction calculate sqrt
instruction calculate power
instruction calculate sine
instruction calculate cosine
instruction calculate exponent
instruction calculate logarithm
instruction calculate log10
instruction calculate log2
instruction calculate abs
instruction round down # floor
instruction round up # ceiling
```

Maybe `calculate sqrt` or `find sqrt`.

Standard intrinsics across architectures

```
instruction abs
instruction arccosine
instruction arcsine
instruction arctangent
instruction _byteswap_uint64
instruction _byteswap_ulong
instruction _byteswap_ushort
instruction ceiling
instruction cosine
instruction hyperbolic cosine
instruction exponent
instruction floor
instruction compute remainder
instruction log
instruction log10
instruction rotate(bits), left
instruction rotate(bits), right
instruction compare memory, memory # memcmp
instruction copy memory, memory # memcpy
instruction write memory, byte # void *memset(void *s, int c, size_t n);
# http://en.cppreference.com/w/c/numeric/math/pow
instruction compute power
instruction compute sine
instruction compute hyperbolic sine # sineh
instruction compute sqrt
instruction concatenate string, string # strcat
instruction compare string, string # strcmp
instruction copy string, memory # strcpy
instruction calculate length, string # strlen
instruction compute tangent
instruction compute hyperbolic tangent
instruction wcscat
instruction wcscmp
instruction wcscpy
instruction wcslen
```
