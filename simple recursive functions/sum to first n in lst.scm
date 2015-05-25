(define (sum x)
(if(= x 0)
    0
   (+ x (sum (- x 1)))
))


(define (sol l)
( if(null? l)
     l
    ( cons (sum ( car l))  (sol (cdr l) ) )
))
