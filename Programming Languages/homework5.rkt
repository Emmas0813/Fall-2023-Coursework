#lang scheme

; Emma Smith
; Prog Lang Fall 2023

; apol and bpol are bivariate polynomials represented as a list of coefficients

; -----------------------------------------------------------------------------------
; REMOVE ZEROES FUNCTION
(define (remove_zeroes a_list) ; to remove zeros and represent empty lists
    (if (null? a_list) ; base case 1: check if list is empty
        '() ; if #t, return empty list
        (if (= (car a_list) 0) ; if #f check if first element is zero in given list
            (remove_zeroes(cdr a_list)) ; if first element is 0, recursively remove zeroes from rest of list
            (reverse a_list) ; reverse the list to eliminate trailing zeroes
        )
     )
   )

; -----------------------------------------------------------------------------
; REMOVE TRAILING LISTS
(define (remove_trailing_empty_set list)
  
    (define (helper-remove lst) 
    (if (null? lst)
        '() 
        (if (null? (car lst)) ; if first element of reversed list is an empty list
            (helper-remove (cdr lst)) ; recursively remove empty lists on rest of list
            lst ; otherwise, return the trimmed list
        )
    )
  )
  
  (reverse (helper-remove (reverse list))) ; return the reversed list to the poly_derx function
)

;-------------------------------------------------------------------------------------------------
; ADDITION FUNCTION
; returns the sum of two polynomial lists
(define (poly_add apol bpol)
  
  (define (addition list1 list2) ;new function that will return the sum of two input polys
     (if(null? list1) ; check if first list is null
        list2 ; base case 1: if #t return second list
        (if(null? list2) ;otherwise, check if list2 is null
           list1 ; base case 2: if #t return first list
           (cons (+ (car list1) (car list2)) (addition (cdr list1)(cdr list2))) ; otherwise, recursively construct added list and return it
         )
      )
   )

  (if (null? apol) ; (poly_add) base case 1: check if first poly is null
      bpol ; if #t, return second poly
      (if (null? bpol) ;otherwise, check if bpol is null
          apol ; if #t, return first poly

          (remove_trailing_empty_set(cons (remove_zeroes (reverse (addition (car apol) (car bpol)))) (poly_add (cdr apol) (cdr bpol)))) ; recursively remove zeroes and construct list of added polynomials
       )
   )
)
; --------------------------------------------------------------------------------------------------
; SUBTRACTION FUNCTION
; returns the difference of two polynomial lists
(define (poly_sub apol bpol)
  
  (define (subtraction list1 list2)
  (if (null? list1) (map - list2) ; if first list empty, return the negated second list
      (if (null? list2) list1 ; if second list empty, return first list
      (cons (- (car list1) (car list2)) (subtraction (cdr list1) (cdr list2)))))) ; construct list by calling subtraction on the first element of both lists recursively

  (if (null? apol) bpol
          (if (null? bpol) apol
              (remove_trailing_empty_set(cons (remove_zeroes (reverse (subtraction (car apol) (car bpol)))) (poly_sub (cdr apol) (cdr bpol))))) ; if neither list is null, call the subtraction function on lists and remove zeroes as needed
  ))

; -------------------------------------------------------------------------------------------------
; DERIVATIVE FUNCTION
; returns the derivative of a polynomial list with respect to x
(define (poly_derx apol)

(define (remove_zeroes_derx a_list) ; custom remove zeroes function for derivative function
    (if (null? a_list) ;(Remove_zeroes) base case 1: check if list is empty, if empty list, return nothing
        '() ; (remove_zeroes)if #t, return empty list
        (if (= (car a_list) 0) ; (remove_zeroes) if #f check if first element is zero in given list
            (remove_zeroes_derx(cdr a_list)) ; if first element is 0, recursively remove zeroes from rest of list
            (cdr (reverse a_list)) ; reverse the list to eliminate trailing zeroes
        )
     )
)
(define (der_calc apol x) ; takes polynomial list and an index to calculate derivative
    (if (null? apol) ; base case: check if first poly is null
        '() ; if #t, return empty list
        (cons (* (car apol) x) (der_calc (cdr apol) (+ x 1))) ; recursively construct list of partial derivatives
    )
)

  (if (null? apol)
      '()
      (remove_trailing_empty_set(cons (remove_zeroes_derx (reverse (der_calc (car apol) 0))) (poly_derx (cdr apol)))) ; if polynomial is not null, calculate derivative and remove any trailing zeroes and constants represented as zeroes
   )
)

; -----------------------------------------------
; MULTIPLICATION
; returns the product of two polynomial lists
(define (poly_mul apol bpol)

  (define (part_mult L1 L2)
    (cond
      ((null? L2) '() ) ; if second list is null, return empty list
      (else (cons(mulup L1 (car L2)) (part_mult L1 (cdr L2)))) ; otherwise recursively call mulup on the first element of the list
      ))

; code provide in class by Dr. Cheng
 (define (smup a L1)
   (if (null? L1) '() ; if list is null, return empty list
       (cons (* a (car L1))(smup a (cdr L1))) ; otherwise, multiply the first element of list (a) with first element in L!
       ))

; code provide in class by Dr. Cheng
  (define (mulup L1 L2)
    (if (null? L1) '() 
        (if (null? L2) '() 
            (addition_inner_list (smup (car L1) L2) ; add inner list by calling smup on first element in L1 and all of L2, and a
                                 (cons 0 (mulup (cdr L1) L2) ; constructed list of mulup and the rest of L1 and all of L2
                                       )))))

  (define (addition_inner_list l1 l2)
    (cond
      ((and (null? l1) (null? l2)) '()) ; if both lists are null, return empty list
      ((null? l1) l2) ; if first list is null, return second list
      ((null? l2) l1) ; if second list is null, return first list
      (else (cons (+ (car l1) (car l2)) ; otherwise construct a list by adding the first elements together recursively
                  (addition_inner_list (cdr l1) (cdr l2))))
      ))

  (if (null? apol) 
      '() 
      (poly_add (part_mult (car apol) bpol)(cons (list 0) (poly_mul (cdr apol) bpol))) ; recursively multiply elements in the lists and return the result
   )

)


#|
; -----------------------------------------------------------------------------

expected outputs:

(poly_add ’( (1 -1) (1 2 3) () (3)) ’((-1 1) (-1 2) (3)))
---> ’(() (0 4 3) (3) (3))

(poly_mul ’( (1) (1 2 3) () (3)) ’((-1) (-1 2) (3)))
---> ’((-1) (-2 0 -3) (2 0 1 6) (0 6 9) (-3 6) (9))

(poly_derx '( (1) (1 2 3) () (3)) )
;---> ’( () ( 2 6))

;------------------------------------------------------------------------------------------------
|#


; tests

(poly_add '( (1 2) ( 3 4)) '((5 5) (6 6)) )

(poly_add '( (1 2) ( 3 492378583257342957)) '((5 5) (6 623985732935873289572395347)) )

(poly_add '( (1 2) ( 3 4)) '((5 5) (6 6 6) (7 7)) )

(poly_add '( (1 2) ( 3 4 -6) (-7 -7)) '((-1 -2) (-3 6 6) (7 7)) )

(poly_sub '( (1 2) ( 3 4)) '((5 5) (6 6)) )

(poly_sub '( (1 2 3) ( 3 4)) '((5 5) (6 6 7)) )

(poly_derx '(( 1 2 3) (2 3 4)  (5 6)))

(poly_derx '(( 1 2 3) (2 3 4 5)  (5) (6)))

(poly_mul '( (1 2 3) (3 4)) '((3 0 4) () () (5 0 0 6)))

(poly_mul '( (1 2 -3) (3 4)) '((3 0 -4) () () (5 0 0 6)))


