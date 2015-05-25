(define (red l k)
(if(< k 2) '()
(cons (car l) (red (cdr l) (- k 1) ))
))


(define (post l k)
(if(< k 2 ) l
   (post (cdr l) (- k 1))
))

(define (ins l k p)
(append (red l k) (cons p (post l k)))
)

(ins '(1 2 3 5 6 7  8 9 ) 4 4)


;;better way of coding

(define (ins l k p)
(if (= k 1) (append (list p ) l)
    (cons (car l) (ins (cdr l) (- k 1) p))

))
