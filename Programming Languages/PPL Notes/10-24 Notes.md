```scheme
(define (mlist l1 l2)
  (if (null? l1)
      l2
      (if (null? l2)
          l1
          (cons (* (car l1)(car l2))(mlist (cdr l1)(cdr l2))))))
		)
; output of: (mlist '(1 2) '(3 4 5))
; ---> (3 8 5)
```
```scheme
(define (addup l1 l2)
  (if (null? l1) l2
	  (if (null? l2) l1
		  (cons (+ (car l1) (car l2)) (addup (cdr l1)(cdr l2)))))
(define (multup l1 l2)
  (if (null? l1) '()
	  (if (null? l2) '()
		  (addup (sumup (car l1) l2) (cons 0 (multup (cdr l1) l2)
		  )))))

```