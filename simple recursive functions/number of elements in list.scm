(define (count l)
(if(null? l )
    0
   (+ 1 (count (cdr l)))
))
