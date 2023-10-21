#lang scheme
'(())
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
(infix 3 - 4)