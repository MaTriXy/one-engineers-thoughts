
;
; LOG(x) - Computes the base 10 logarithm of x.
;   Usual range for x (>0).
;
; LOG(x) = lg(x) / lg(10).
;
; @see https://courses.engr.illinois.edu/ece390/books/artofasm/CH14/CH14-6.html
;

%macro log_ten
  fld1
  fxch
  fyl2x ; Compute 1 * lg(x).
  fldl2t ; Load lg(10).
  fdiv ; Compute lg(x) / lg(10).
  ret
%endmacro
