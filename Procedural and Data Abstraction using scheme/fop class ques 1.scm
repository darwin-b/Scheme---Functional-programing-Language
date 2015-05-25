; here funtions sum, greater written according to complete list... as input. 

(define (extract l)
(if (null? l)
     '()
    (cons (cadar l) (extract (cdr l)))
))
                                                                                           
(define (sum l)
(if(null? l)
   0
   (+ (car (extract l)) (sum (cdr l) ))
))

(define (count l)
(if(null? l )
    0
   (+ 1 (count (cdr l)))
))

(define (avg l)
(/ (sum l) (count l))
)


(define (greater k l)
(if(null? l )
     0
    (if (< k (car (extract l)))
         (+ 1 (greater k (cdr l) ) )
         (greater k (cdr l))
     )
))



(define (percentage l)
(* 100 (/ (greater (avg l ) l) (count l))))
)

(percentage '((a 10) (b 20) (c 30) (d 40) (e 50))))

