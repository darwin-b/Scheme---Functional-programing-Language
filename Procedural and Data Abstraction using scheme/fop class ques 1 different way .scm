; just using abstraction way.....
; here sum, count , avg... computes usuall way as it dos on numbers.

(define (extract l)
(if (null? l)
     '()
    (cons (cadar l) (extract (cdr l)))
))
                                                                                           
(define (sum l)
(if(null? l)
   0
   (+ (car l) (sum (cdr l) ))
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
    (if (< k (car l))
         (+ 1 (greater k (cdr l) ) )
         (greater k (cdr l))
     )
))



(define (percentage l)
(* 100 (/ (greater (avg (extract l) ) (extract l)) (count l)))
)


(percentage '((a 10) (b 20) (c 30) (d 40) (e 50))))

