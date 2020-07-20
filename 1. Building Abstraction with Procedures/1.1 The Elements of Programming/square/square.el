;; SICP 1.1.4
;; Compound Procedures

(defun square (x) (* x x))

(defun sum-of-squares (x y)
  (+ (square x) (square y)))
