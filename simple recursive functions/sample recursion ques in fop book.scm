; A function f is defined by the rule that f ( n ) = n if
; n < 3 and f ( n ) = f ( n − 1) + 2 f ( n − 2) + 3 f ( n − 3) if n ≥ 3.


(define (f x)
(if(< x 3)
    x
  ( + (+ (f (- 1 x)) (* 2 ( f ( - x 2))) )  (* 3 (f ( - x 3))) ) )
)
