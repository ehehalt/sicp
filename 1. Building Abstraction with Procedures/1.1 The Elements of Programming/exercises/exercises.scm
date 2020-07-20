;; SICP 1.1 - The Elemnts of Programming

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

;; Excercise 1.3
;; Define a procedure that takes three numbers of arguments
;; and returns the sum of the squares of the two larger members.

(define (sum-of-squares-ex x y z)
  (cond ((and (< x y) (< x z)) (sum-of-squares y z))
        ((and (< y x) (< y z)) (sum-of-squares x z))
        (else (sum-of-squares x y))))
