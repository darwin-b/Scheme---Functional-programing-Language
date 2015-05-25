(define (compare l1 l2)
        (if(null? l2) 0
        (if (= (car l1) (car l2))
            1
            (compare l1 (cdr l2)))))

(define (set_difference l1 l2)
     (if(null? l1)  (list)
     (if(null? l2)  l1
        (cond ((= (compare l1 l2) 1) (set_difference (cdr l1) l2))
        (else ( (cons (car l1) (set_difference (cdr l1) l2))))
))))
