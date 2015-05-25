   ; frequency of each element in list
(define (freq x l2 )
(if(null? l2)
    0
   (if (= x (car l2))
       (+ 1 (freq x (cdr l2) ) )
       (freq x (cdr l2) ) 
   )
))

(define (main L1 l2)
(if(null? l1)
   l1
   (cons (freq (car l1) l2 ) ( main (cdr l1) l2 ) )
))

(define (fin l1) (main l1 l1 ))
