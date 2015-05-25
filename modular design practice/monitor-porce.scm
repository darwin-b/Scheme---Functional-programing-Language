(define (monit f) ; f-any procedure
(define call 0)
(lambda (mf) 
(cond ((eq? mf 'how-many-calls) call)
      ((eq? mf 'reset-count) (begin (set! call 0) call))
      (else (begin (set! call (+ 1 call)) (f mf)))
)))

(define a (monit sqrt)) 
(a 100)
(a 'how-many-calls)
(a 'reset-count)
