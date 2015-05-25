; prime or not 
(define(prim n k)
(if(< n 2)
    "not prime"
    (if(<= k (/ n 2))
       (if(= (modulo n k) 0)
           "not prime"
          (prim n (+ k 1))
       )
    "prime"
    )
))

(define (prime n) (prim n 2))
