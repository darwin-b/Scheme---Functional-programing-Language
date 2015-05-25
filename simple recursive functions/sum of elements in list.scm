(define (sum l)
(if(null? l)
   0
   (+ (car l) (sum (cdr l) ))
))


