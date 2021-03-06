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

;; Exercise 1.4
;; Observe that our model of evaluation allows for combinations whose operators
;; are compound expressions. Use this observation to describe the behavior of the
;; following procedure

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; (a-plus-abs-b 1 3)
;; ((if (> 3 0) + -) 1 3)
;; ((if #t + -) 1 3)
;; (+ 1 3)
;; 4

;; (a-plus-abs-b 1 -3)
;; ((if (> -3 0) + -) 1 -3)
;; ((if #f + -) 1 -3)
;; (- 1 -3)
;; 4

;; Exercise 1.7
;; Design a square-root procedure that use as test when the change from a guess to
;; the next is a very small fraction of the guess

(define (sqrt-iter guess old-guess x)
  (if (good-enough? guess old-guess)
      guess
      (sqrt-iter (improve guess x) guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess old-guess)
  (< (/ (abs (- guess old-guess)) guess) 0.00001))

(define (sqrt x)
  (sqrt-iter 1.0 0.0 x))
