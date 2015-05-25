(define (greater k l)
(if(null? l )
     0
    (if (< k (car l))
         (+ 1 (greater k (cdr l) ) )
         (greater k (cdr l))
     )
))
