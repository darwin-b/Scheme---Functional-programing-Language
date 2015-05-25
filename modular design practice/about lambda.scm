(define (f g) (g 2 5) ) ; f takes a prcoedure as argument and passed to g

(define (product z) (lambda (x y) ( + z (* x y))) )
       ;or both works the same
(define (product x y) (* x y)) ;   note-- the number of args in passing function should be equall to args passsed to g. here (x,y) 2 ==(equalls) (g 2 5) --gives (2 5) 2                                  args matched exactly. this should be always matched.



(f square)



(define (fin f) fin)
(define (f g) (lambda (x y) (g x y) ))
(define (product x y) (* x y))


((f product) 10 5)

(define a f )
(a 10 12)



