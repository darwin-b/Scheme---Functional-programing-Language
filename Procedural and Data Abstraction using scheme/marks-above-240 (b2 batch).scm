(define (names-above-240 data)
(if(empty? data) null
   (make-stud-list-above-240  (make-stud-&-marks-list-above-240 data) )
))

(define null '() )

(define (total-marks record)
(+ (get-mark1 record) (get-mark2 record) (get-mark3 record) )
) 

(define (empty? l) (null? l) )
(define (get-first-record data) (car data) )
(define (get-first-name record) (car record)  )
(define (get-mark1 record) (caadr record) )
(define (get-mark2 record) (cadadr record) )
(define (get-mark3 record) (car (cddadr record) ) )
(define (get-rest data) (cdr data) )


(define (make-stud-list-above-240 student-names-marks)
(if(empty? student-names-marks) null
   (cons (caar student-names-marks) (make-stud-list-above-240 (cdr student-names-marks) ))
))

(define (make-total-marks-&student-name  record)
(if(empty? record) null
   (list (car record) (total-marks record) ) 
))



(define (make-stud-&-marks-list-above-240 data)
(if(empty? data) null
   (if(< 240 (total-marks (get-first-record data) ) )
      (cons (make-total-marks-&student-name (get-first-record data) ) (make-stud-&-marks-list-above-240 (get-rest data) ) )  
      (make-stud-&-marks-list-above-240 (get-rest data) )
   )
))

(names-above-240 '((a (70 80 98)) (b (60 30 90) ) (c (85 90 98) ) (d (81 80 80) ) ) )

