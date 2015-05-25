(define (dis k l)
(if(= k 1)
   (car l)
   (dis (- k 1) (cdr l ) )))
