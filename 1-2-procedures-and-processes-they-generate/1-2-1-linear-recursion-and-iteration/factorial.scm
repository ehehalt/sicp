;; SICP 1.2.1
;; Linear Recursion and Iteration

#lang racket

(define (fact1 n)
  (if (= n 1)
      1
    (* n (fact1 (- n 1)))))

;; Iterative

(define (fact2 n)
  (fact2-iter 1 1 n))

(define (fact2-iter product counter max-count)
  (if (> counter max-count)
      product
    (fact2-iter (* counter product)
                (+ counter 1)
                max-count)))


(print (fact1 7))
(print (fact2 7))
