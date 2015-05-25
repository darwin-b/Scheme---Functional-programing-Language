(define (rev l)
(if(null? l)
    l
    ( append  (rev (cdr l))  (list (car l) )) 
))
    
(rev '(1 2 3 4 5))


