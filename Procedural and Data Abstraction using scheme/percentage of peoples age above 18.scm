; note--  this code is written on  23/09/2014.  so any one born on or after 23/09/1996 are not considered to be 18 years.

(define (percentage_age_above_18 l)
(if(null? l)
      '()
      (* 100 (/ (count_age_above_18 (check_validity l)) (count_names_in_registration (check_validity l))))
))

(define (count_names_in_registration l)
(if(null? l )
    0
   (+ 1 (count_names_in_registration (cdr l)))
))

(define (count_age_above_18 l)
(if(null? l)
   0
   (if (age_above_18 (cadar l))
       (+ 1 (count_age_above_18 (cdr l)))
       (count_age_above_18 (cdr l))
    )
))

(define (age_above_18 l)
(if (null? l) #f
      (if (>= (- (+ (* 2014 365) (* 9 30) 23) (+ (car l) (* (cadr l) 30) (* 365 (caddr l)))) (* 18 365))
          #t
          #f)
))

(define (check_validity l)
(if(null? l)
   '()
   (if (valid_date (cadar l) ) 
       (cons (car l) (check_validity (cdr l) ))
       (check_validity (cdr l))
         
)))

(define (valid_date l)
(cond ((< (caddr l) 0) #f)
 ((or (= (cadr l) 1) (= (cadr l) 3) (= (cadr l) 5) (= (cadr l) 7) (= (cadr l) 8) (= (cadr l) 10) (= (cadr l) 12))
               (if (or (> (car l) 31) (< (car l) 1)) #f #t))
       ((or (= (cadr l) 4) (= (cadr l) 6) (= (cadr l) 9) (= (cadr l) 11))
               (if (or (> (car l) 30) (< (car l) 1)) #f #t))
       ((or (> (cadr l) 12) (< (cadr l) 1)) #f)
      
       (else (if (= (cadr l) 2)
               (if (or (> (car l) 28) (< (car l) 1)) #f #t)))
))   

; (percentage_age_above_18 '((ram (1 13 1))))
         
(percentage_age_above_18 '((ramu (12 11 -5)) (ravi (11 13 1990)) (raju (1 1 1799)) (darwin (21 9 1990))  (nithin (20 9 1999))) )
