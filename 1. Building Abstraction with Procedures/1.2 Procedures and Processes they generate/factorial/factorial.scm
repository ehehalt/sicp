;; SICP 1.2.1
;; Linear Recursion and Iteration

;; #lang racket

(define (fact1 n)
  (if (= n 1)
      1
    (* n (fact1 (- n 1)))))

;; Iterative

(define (fact2 n)
  (define (iter product counter)
    (if (> counter n)
        product
        (iter (* counter product)
              (+ counter 1))))
  (iter 1 1))


;; (print (fact1 7))
;; (print (fact2 7))
