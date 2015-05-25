;recursive way of finding quotient when 'x' is divided by 'y' 

(define (div x y)
(if(< x 0)
   -1
   (+ 1 (div (- x y) y) )
)
)
