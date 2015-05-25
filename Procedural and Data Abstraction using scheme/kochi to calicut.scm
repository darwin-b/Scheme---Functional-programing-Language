(define (caution-driver travel-log)
(if (error? travel-log) 
    "invalid entry of log"
    (if (= (least-time (make-travel-duration-log travel-log) ) (travel-duration (get-first-in-record travel-log) ) )
           (get-reg-number (get-first-in-record travel-log))
           (caution-driver (get-rest-in-record travel-log) )
    )
))

(define (error? travel-log) (null? travel-log)            )
(define (get-reg-number record) (car record)               )
(define (get-first-in-record travel-log) (car travel-log)  )
(define (get-rest-in-record travel-log) (cdr travel-log)   )
(define (get-end-time record) (total-time-in-minutes (caddr record) ) )
(define (get-start-time record) (total-time-in-minutes (cadr record) ) ) 
(define (get-rest-rest-in-record time-log) (cddr time-log) )
(define (get-hrs time) (car time) )
(define (get-mins time) (cadr time) )
(define (get-second-in-record time-log) (cadr time-log) )

(define (total-time-in-minutes time) (+ (* (get-hrs time) 60) (get-mins time) ) ) 

(define (travel-duration record) (- (get-end-time record) (get-start-time record) ) )

(define (make-travel-duration-log travel-log) 
(if(error? travel-log) 
   '()
   (cons (travel-duration (get-first-in-record travel-log) ) (make-travel-duration-log (get-rest-in-record travel-log ) ) )
))

(define (least-time time-dur-log)
(if(error? (get-rest-in-record time-dur-log) ) (get-first-in-record time-dur-log) 
         (if (> (get-first-in-record time-dur-log) (get-second-in-record time-dur-log))
             (least-time (get-rest-in-record time-dur-log) )
             (least-time (cons (get-first-in-record time-dur-log) (get-rest-rest-in-record time-dur-log)) )
)))

(caution-driver '( (abc (8 40) (16 40 ) ) (def (14 30) (19 15) ) (xyz (16 50) (22 45) ) ) ) 
