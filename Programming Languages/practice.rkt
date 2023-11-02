#lang scheme

(define (myif x y z) (if x y z))
;(myif (null? '()) 0 (/ 3 0))

(delay (+ 3 5))
(define a (delay (+ 3 5)))
a ; prints <promise:a>

(force a) ; This will evaluate the delayed computation and return the result, which is 8.

; -----------------------

(define (traddone l)
  (letrec ( (helper
             (lambda (l re)
               (if (null? l)
                   re
                   (helper (cdr l)(append re (list (+ (car l) 1)))))
               )
              )
             )


             (helper l '()) 
    )
  )

(traddone '(100 211 3033))
; ----------------------

(define (fib n)
  (cond
    ((= n 1) 1)
    ((= n 2) 1)
    (#t (+ (fib(- n 1))(fib(- n 2))))))

(fib 10)

; -----------------------

(define naturals
  (letrec ((next (lambda(n)
                    (cons n (delay (next (+ n 1))))))
            )
    (next 1)))
naturals ; print 1 . promise

; -----------------------

(define lazysquares
  (letrec ((next (lambda (n) (cons (* n n) (delay (next (+ n 1)))))))(next 1)))
lazysquares
(force (cdr lazysquares))

(define lazycubes (letrec ((next (lambda (n) (cons (* n (* n n)) (delay (next (+ n 1)))))))(next 1)))
(force (cdr lazycubes))
lazycubes
(force (cdr (force (cdr lazycubes))))

; ------------------------

  (define (sqr_list l)
  (letrec ((helper (lambda (st res)
                    (if (null? st)
                        res
                        (helper (cdr st)
                                (append res (list (* (car st) (car st))))))
                    )))
    (helper l '())))


(sqr_list '(3 0 6))
; ------------------------


; ------------------------

(define (myfac n)
     (if (= n 0)
         1
         (* n (myfac (- n 1)))))

(define (trfac n)
  (letrec ((helper (lambda (re m)
                 (if (= m n) re
                     (helper (* re (+ m 1)) (+ m 1)) )))) (helper 1 0) )
  )

(myfac 5)

; -------------------------

(define (scalarmul lst scalar)
  
  (define (helper lst scalar acc)
    (if (null? lst)
        (reverse acc) 
        (helper (cdr lst) scalar (cons (* (car lst) scalar) acc))
    )
  )
  
  (helper lst scalar '())
)

(scalarmul '(1 2 0) 3)
