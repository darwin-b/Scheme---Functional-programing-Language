(define (delete l) (del l l) )
(define (del l m)
(if(null? l)
   '()
   (if(= (car l)  (grt m) )
      (del  (cdr l) m)
      (cons (car l) (del (cdr l) m) )
   )
))


(define (grt l)
(if(null? (cdr l)) ( car l) 
   (if(< (car l) (cadr l) ) 
      (grt (cdr l) )
      (grt (cons (car l) (cddr l) ) )
   )
))

(define (second-largest l) (grt (delete l) ) ) 

(second-largest '(2 3 4 1 8 5 8 8 7 6) )
