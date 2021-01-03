(defun is-prime (n &optional (d (- n 1))) 
  (or (= d 1)
      (and (/= (rem n d) 0)
           (is-prime  n (- d 1)))))

(labels ((find-10001st-prime (num count)
	   (cond
	     ((equal count 10001)
	      (print (decf num)))
	     ((is-prime num)
	      (find-10001st-prime (1+ num) (1+ count)))
	     (t (find-10001st-prime (1+ num) count)))))
  (find-10001st-prime 2 0))
