;; SICP 1.2.1
;; Linear Recursion and Iteration

(defun fact1 (n)
  (if (= n 1)
      1
    (* n (fact1 (- n 1)))))
