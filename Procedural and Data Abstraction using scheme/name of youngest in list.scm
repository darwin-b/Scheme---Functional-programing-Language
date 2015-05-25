(define (youngest-per-in-rec l)
(if(or (error? l) (error? (rest-in-rec l))  )
   "invalid entry"
   (if(error? (rest-rest-in-rec l) ) 
       (get-name-per-in-rec (younger-of-two (first-in-rec l) (second-in-rec l) ) )
       (youngest-per-in-rec  (cons   (younger-of-two (first-in-rec l) (second-in-rec l) )   (rest-rest-in-rec l)  )  )      
   )
))

(define (younger-of-two rec1 rec2)
(if(< (days-before-dob rec1) (days-before-dob rec2)    ) 
   rec2
   rec1
))

(define (days-before-dob rec)
(+ (* (get-year rec) 365) (* (get-month rec) 30) (get-date rec))
)

(define (rest-in-rec l)            (cdr l)             )
(define (error? l)                 (null? l)           )
(define (rest-rest-in-rec l)       (cddr l)            )
(define (get-name-per-in-rec l)    (car l)             )
(define (first-in-rec l)           (car l)             )
(define (second-in-rec l)          (cadr l)            )
(define (get-year l)               ( caddr (cadr l) )  )
(define (get-month l)              (cadar (cdr l) )    )
(define (get-date l)               (caadr l)           ) 




(youngest-per-in-rec '( (man (12 3 1996))  (women (13 3 1998)) (child (15 4 1997)) (boy (15 8 199))   ) )


