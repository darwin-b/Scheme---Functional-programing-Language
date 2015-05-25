(define (sum l)
(if(null? l)
   0
   (+ (car l) (sum (cdr l) ))
))

(define (count l)
(if(null? l )
    0
   (+ 1 (count (cdr l)))
))

(define (avg l)
(/ (sum l) (count l))
)
