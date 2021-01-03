(iter (for a from 2 to 1000)
  (iter (for b from (+ a 1) to 1000)
    (let ((c (- 1000 (+ a b))))
      (when (> c b)
	(let* ((asqr (* a a))
	       (bsqr (* b b))
	       (csqr (* c c)))
	  ;; (format t "a:~a b: ~a c:~a~%" a b c)
	  (when (equal csqr (+ asqr bsqr))
	    (format t "solution ~a" (* a b c))))))))