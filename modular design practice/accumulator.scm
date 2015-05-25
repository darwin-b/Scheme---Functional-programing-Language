(define (make-acum acum) 
(lambda (val)
(if (number? val)
    (begin (set! acum (+ acum val )) acum) 
     "enter valid value"
)))

(define a (make-acum 0))

(a 10)
