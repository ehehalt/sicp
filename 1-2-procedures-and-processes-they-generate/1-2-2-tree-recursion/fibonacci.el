;; SICP 1.2.2
;; Tree Recursion

(defun fib1 (n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (t (+ (fib (- n 1))
              (fib (- n 2))))))


(defun fib2 (n)
	(fib2-iter 1 0 n))

(defun fib2-iter (a b count)
  (if (= count 0)
      b
    (fib2-iter (+ a b) a (- count 1))))
