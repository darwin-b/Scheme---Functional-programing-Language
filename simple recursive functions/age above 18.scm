(define (comp ls)
   (if (null? ls) 0
      (if (>= (- (+ (* 2014 365) (* 9 30) 23) (+ (car ls) (* (cadr ls) 30) (* 365 (caddr ls)))) (* 18 365))
          #t
          #f))
)


(define (age ls)
   (if (null? ls) 0
     (+ (car ls) (* (cadr ls) 30) (* 365 (caddr ls)))))


(comp '(23 9 1996))
