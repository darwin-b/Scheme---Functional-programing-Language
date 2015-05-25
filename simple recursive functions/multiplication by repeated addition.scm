(define (mult x y)
(if(= y 0)
   0
   (+ x (mult x (- y 1)))))
