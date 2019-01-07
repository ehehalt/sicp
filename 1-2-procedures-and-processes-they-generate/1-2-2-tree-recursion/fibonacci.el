;; SICP 1.2.2
;; Tree Recursion
 
(defun fib (n)
	(cond ((= n 0) 0)
				((= n 1) 1)
				(t (+ (fib (- n 1))
							(fib (- n 2))))))
