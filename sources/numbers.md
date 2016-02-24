
source hex
  http://en.wikipedia.org/wiki/Hexadecimal

source exponent
  http://en.wikipedia.org/wiki/Scientific_notation

source binary
  http://en.wikipedia.org/wiki/Binary_prefix

source octal
  http://en.wikipedia.org/wiki/Octal

example 200          ; decimal
example 0200         ; still decimal - the leading 0 does not make it octal
example 0200d        ; explicitly decimal - d suffix
example 0d200        ; also decimal - 0d prefex
example 0c8h         ; hex - h suffix, but leading 0 is required because c8h looks like a var
example 0xc8         ; hex - the classic 0x prefix
example 0hc8         ; hex - for some reason NASM likes 0h
example 310q         ; octal - q suffix
example 0q310        ; octal - 0q prefix
example 11001000b    ; binary - b suffix
example 0b1100_1000  ; binary - 0b prefix, and by the way, underscores are allowed
example 0x12345678          ; 0x78 0x56 0x34 0x12
example 1.234567e20         ; floating-point constant
example 0x123456789abcdef0  ; eight byte constant
example 1.234567e20         ; double-precision float
example 1.234567e20         ; extended-precision float
10,000.0000
10,000
10,000
10,000.0
10000.123
.23
0.76
1000000000
1 000 000 000
1,000,000,000
1_000_000_000

#FFFFFF
#fff
&#xcode;
0x5A3
\x1B
U+20AC
FFh
05A3H
$5A3
#05A3
smalltalk 16r5A3
6.022E23
1.6e-35
