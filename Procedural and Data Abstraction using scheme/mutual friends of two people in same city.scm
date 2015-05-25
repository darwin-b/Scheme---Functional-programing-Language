; 2,3,4 lines are for checking program. 
; id2 ----> person 2's id
; id1 ----> person 1's id 
; web-db is web database (record contianing all users...)
                        ; a user has ...... { (idnumber), (firstname lastname) , (city name) , (ids of his friends) }
(define id1 3)
(define id2 1)
(define web-db '((1 (aa w) calicut (2 3 4 )) (2 (bb x) mysore (1 3)) (3 (cc x) calicut (1 2 4) ) (4 (dd z) calicut (1 3) ) ) )

(define (get-first-people-rec web-db) (car web-db) )
(define (get-rest-people-rec web-db) (cdr web-db) )
(define (get-id p-rec) (car p-rec) )
(define (get-full-name p-rec) (cadr p-rec) )
(define (get-city p-rec) (caddr p-rec) )
(define (get-friends p-rec) (cadddr p-rec) )
(define (get-first-name full-name ) (car full-name) )
(define (get-last-name full-name) (cadr full-name) )
(define (get-first-friend friends) (car friends) )
(define (get-rest friends) (cdr friends) )
(define (empty? ls) (null? ls) )

(define (make-mutual-friends-from-calicut-city muf-f-names web-db)
(if(empty? muf-f-names) '() 
   (if(check-calicut-city?  (car muf-f-names) web-db )
      (cons (get-first-name muf-f-names) (make-mutual-friends-from-calicut-city (get-rest muf-f-names) web-db ) )
      (make-mutual-friends-from-calicut-city (get-rest muf-f-names) web-db)
   )
))

(define (id-friends id web-db) 
(if(empty? web-db) '()
   (if(= id (get-id (get-first-people-rec web-db)) )
      (get-friends (get-first-people-rec web-db) )
      (id-friends id (get-rest-people-rec web-db) )
   )
))

(define (mutual-friends id1-friends id2-friends ) 
(if(or (empty? id1-friends ) (null? id2-friends) )'() 
   (if (member (get-id id1-friends ) id2-friends ) 
       (cons (get-id  id1-friends ) (mutual-friends (get-rest id1-friends)  id2-friends ) )
       (mutual-friends (get-rest id1-friends)  id2-friends ) 
    ))
)
(define (full-name id web-db) 
(if(empty? id) '()
   (if(= (get-id id) (get-id (get-first-people-rec web-db)) ) 
      (cons (get-first-name (get-full-name (get-first-people-rec web-db) )) (full-name (get-rest id) web-db ) )
      (full-name id (get-rest web-db) )
   )
))


(define (check-calicut-city? f-name web-db)
(if(empty? web-db) #f
  (if (and (equal? f-name (get-first-name (get-full-name (get-first-people-rec web-db)))) (equal? 'calicut  (get-city (get-first-people-rec web-db) ) ) ) 
       #t
       (check-calicut-city? f-name (get-rest-people-rec web-db) )
  )
))

; this is main function
(define (main id1 id2 web-db)
(if(empty? web-db) "invalid entry"
(make-mutual-friends-from-calicut-city (full-name (sort < (mutual-friends (id-friends id1 web-db) (id-friends id2 web-db) ) ) web-db) web-db) 
))


(main id1 id2 web-db)



