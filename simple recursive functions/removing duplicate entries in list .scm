(define (comp l m)
(if (null? (cdr m) ) 
      0
    (if(= (car l) (cadr m) )
       1
       (comp l (cdr m) )
    )
))
   
(define (del l)
(if (null? l) 
    l
   (if (= (comp l l)  1) 
         (del (cdr l))
         (cons (car l) (del (cdr l)))
)))

(del '(1 1 2 2 2 4 1))



   
