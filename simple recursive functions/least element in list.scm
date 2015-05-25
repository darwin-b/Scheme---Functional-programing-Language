(define (less l)
(if(null? l) '() 
   (if(= (least l) (car l) )
      (car l)
       (less (cdr l)  )
   )
))

(define (least l)
(if (null? (cdr l) ) (car l) 
       (if (> (car l) (cadr l) )
           (least (cdr l) )
           (least (cons (car l) (cddr l)))
       )
))

(less '( 20 4 -6 9 6 ) )


