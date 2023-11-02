#lang scheme
#|'(())
(null? 3)
(null? '(()))
(null? '())
(cons 3 '(okc dallas houston))
(cons '( 3 ) '(okc dallas houston)) ;cons(truct) only takes two arguments
(list 3 4 5)
(list 'dallas 'norman)
(list '+ 3)
(append '(3 4) '(dallas norman))
(begin (+ 3 4)(* 9 8) )
(lambda (x) (+ x x))
;(lambda (x) (+ x y)) is invalide bc y not defined)
( (lambda (x) (+ x x)) 3)
( (lambda (x y z) (y x z)) 3 + 4) ; x = 3, y = +, z = 4
(define infix(lambda (x y z) (y x z)))
(infix 3 - 4)|#

(map + '(1 2 3) '(4 5 6))
(map car '((1 2 3) (okc ca usa)))

(let ((x 3) (y 7))(* x y))
(let ((x 4)) (let( (x 5)(y x)) (+ x y)))
(let ((x 4)) (let( (x 5)(y x)) (+ x y)) x)

; (eval (apply (lambda (x) (cdr x)) '(( cdr + 3 5))) ) prints 7

(let ((x 2))
  (let ((x 4)
        (y x)
        (squaresum (lambda (a b) (+ (* a a) (* b b) ) ))
        )
    (squaresum x y)
    )
  )
; -----------------------------
(define (mlist l1 l2)
  (if (null? l1)
      l2
      (if (null? l2)
          l1
          (cons (* (car l1)(car l2))(mlist (cdr l1)(cdr l2))))))
