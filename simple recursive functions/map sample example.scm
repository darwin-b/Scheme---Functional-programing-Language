(define (map proc l)
(if(null? l )
    '()
   (cons (proc (car l)) (map proc (cdr l)))
))

(define (sq x)
 (* x x) ) 

(map sq ''(1 2 3 4 5 6 7 ))


(define (sql l) (map sq l))



(sql '(1 2 3 4 5 6 7 ))
