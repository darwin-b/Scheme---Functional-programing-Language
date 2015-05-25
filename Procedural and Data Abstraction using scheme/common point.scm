(define (common-point line1 line2)
(if (or (error? line1) (error? line2)) 
     "invalid entry"
    (if(or (check? (get-point1 line1 ) (get-point1 line2) ) (check? (get-point1 line1 ) (get-point2 line2) ) (check? (get-point2 line1 ) (get-point1 line2)  )         (check? (get-point2 line1 ) (get-point2 line2) ) )
    #t
    #f
)))

(define (error? line) (null? line) )

(define (get-point1 line) (car line)     ) 
(define (get-point2 line) (cadr line)    )
(define (get-x point)     (car point)    )
(define (get-y point)     (cadr point)   )
(define (get-z point)     (caddr point)  ) 

(define (check? point1 point2)
(if(and (= (get-x point1) (get-x point2) ) (= (get-y point1) (get-y point2) ) (= (get-z point1) (get-z point2) ))
   #t
   #f
))  

(common-point '( (2 3 5) (3 4 5 )) '( (2 3 4) (3 0 5)) )
