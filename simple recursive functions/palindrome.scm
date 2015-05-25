(define (l n)
 (if (= n 0)
     -1
    (+ 1 ( l (quotient n 10)))
 
))

(define (re n)
(if(= n 0)
    0
   (+ (* (modulo n 10) (expt 10 (l n) )) (re (quotient n 10)))
))

(define (palin n)
(if(= n (re n))
    "palindrome"
    "not palindrome"
)) 
