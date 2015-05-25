(define (make-account bal)
(define (withdraw amt)
 (if(< bal amt)
    "Insuffiecient Funds"
    (begin (set! bal (- bal amt)) bal)
 ))

(define (deposit amt)
 (begin (set! bal (+ bal amt)) bal)
)

(define (dispatch password m)
 (if (eq? password 'pswd) 
     (cond ((eq? m 'withdraw) withdraw)
           ((eq? m 'deposit) deposit)
           (else (error "Unkown-request") ))
     (error "incorrect-password") )
)dispatch)

(define a1 (make-account 100))
((a1 'pswd 'deposit) 50)



;;call-cops if pswd incorrect for more than 3 consecutive tries.


(define (make-account bal)

  (define (withdraw amt)
    (if(< bal amt)
    "Insuffiecient Funds"
    (begin (set! bal (- bal amt)) bal)
    ))

  (define (deposit amt)
    (begin (set! bal (+ bal amt)) bal)
  )

   (define cops); uninitialised.... initialising inside make-account causes always the value to be this one whenever this function is called.(no incrementing done 
                ;                    to call cops.
                ; so,
                ;    option 1.. intialise it globally at cost of making it succeptible to the cause of its very own defnition.
 
                ;    option 2.. asking user to make-atleast one valid transaction...as soon as account is created to use the account forever
                ;                 (since it initialises here cops) 
                ;                 (may be this is the underlying principle in real world tooo...  :P )
                        
  (define (dispatch password m)
    (if (eq? password 'pswd) 
       (begin (set! cops 1) 
            (cond ((eq? m 'withdraw) withdraw)
                  ((eq? m 'deposit) deposit)
                  (else (error "Unkown-request") ))
       )
      (if(> cops 3)                     ;calls cops if pswd entered wrong consecutively for more than 3 times.
         (error "CALL COPS")
         (begin (set! cops (+ 1 cops)) (error "incorrct password")) ))
  ) 
dispatch)

(define a1 (make-account 100))
((a1 'psw 'deposit) 50)


;clear code---re-written


(define (make-account bal)
 (define cops 0)   
  (define (withdraw amt)
    (if(< bal amt)
    "Insuffiecient Funds"
    (begin (set! bal (- bal amt)) bal)
  ))
  (define (deposit amt)
    (begin (set! bal (+ bal amt)) bal)
  )       
 (define (dispatch password m)
    (if (eq? password 'pswd) 
       (begin (set! cops 1) 
            (cond ((eq? m 'withdraw) withdraw)
                  ((eq? m 'deposit) deposit)
                  (else (error "Unkown-request") ))
       )
      (if(> cops 3) 
         (error "CALL COPS")
         (begin (set! cops (+ 1 cops)) (error "incorrct password")) ))
  ) 
dispatch)

(define a1 (make-account 100))
((a1 'psw 'deposit) 50)





