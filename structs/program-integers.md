
## [Integers](http://en.wikipedia.org/wiki/Integer_%28computer_science%29#Common_integral_data_types)

```coffee
integer 4
  range signed
    from -2^3
    to 2^3
  range unsigned
    Unsigned: From 0 to 15 which equals 24 − 1  

integer 8
  Signed: From −128 to 127, from −(27) to 27 − 1  
  unsigned: From 0 to 255 which equals 28 − 1

integer 16
  Signed: From −32,768 to 32,767, from −(215) to 215 − 1  
  Unsigned: From 0 to 65,535 which equals 216 − 1 

integer 32
  Signed: From −2,147,483,648 to 2,147,483,647, from −(231) to 231 − 1  
  Unsigned: From 0 to 4,294,967,295 which equals 232 − 1  

integer 64
  Signed: From −9,223,372,036,854,775,808 to 9,223,372,036,854,775,807, from −(263) to 263 − 1  
  Unsigned: From 0 to 18,446,744,073,709,551,615 which equals 264 − 1 

integer 128
  Signed: From −170,141,183,460,469,231,731,687,303,715,884,105,728 to 170,141,183,460,469,231,731,687,303,715,884,105,727, from −(2127) to 2127 − 1  
  Unsigned: From 0 to 340,282,366,920,938,463,463,374,607,431,768,211,455 which equals 2128 − 1 

integer n
  Signed: (−(2n−1)) to (2n−1 − 1) 
  Unsigned: 0 to (2n−1) 
```

```coffee
alias nibble, integer(4)

alias octet, integer(8)
alias byte, integer(8)

alias short, integer(16)
alias word, integer(16)

alias double, integer(32)
alias long, integer(32)

alias long(long), integer(64)
alias quad, integer(64)
```
