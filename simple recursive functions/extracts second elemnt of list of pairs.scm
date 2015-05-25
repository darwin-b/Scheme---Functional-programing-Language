(define (extract l)
(if (null? l)
     '()
    (cons (cadar l) (extract (cdr l)))
))

(extract '( (a 10) (b 20) (c 30)))

