# Scheme
```Scheme
(define result
  (letrec ((even?
             (lambda (n)
               (if (= n 0)
                   #t
                   (odd? (- n 1)))))
           (odd?
             (lambda (n)
               (if (= n 0)
                   #f
                   (even? (- n 1))))))
    (even? 5)))

(display result) ; Output: #f

```
Infinite lists
```scheme
(define lazycubes
  (letrec ((next (lambda (n)(cons (* n (* n n))(delay(next (+ n 1)))))))(next 1))
  
(define naturals 
  (letrec ((next (lambda (n) (cons n (delay (+ n 1)))))) (next 1)))
  
```
tail recursion 
```scheme
(define (factorial-tail n)
  (define (factorial-helper n acc)
    (if (= n 0)
        acc
        (factorial-helper (- n 1) (* acc n))))
  (factorial-helper n 1))
```

# Python
**yield**
```python
def g():
	yield 1
	yield 2
	yield "Tulsa"
for i in g():
	print(i)
# prints: 
# 1
# 2
# Tulsa

def squares(): 
	i = 0;
	while True:
		yield i*i
		i = i + 1
for s in squares():
	print(s)
	if s > 10000:
		break
```
**scripting**
# C
