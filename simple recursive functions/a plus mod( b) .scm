; i.e is mod computes  a + |b|
; example (mod 6 -4) --> gives 10 

(define ( mod a b)
( (if (> b 0) + -) a b ))
