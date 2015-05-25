;deletes all occurrnces of k in list l

(define (del k l)
(if(null? l)
   '()
   (if(= (car l) k)
      (del k (cdr l) )
      (cons (car l) (del k (cdr l)) )
   )
))
