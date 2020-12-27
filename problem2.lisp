(let ((sum 0)
      (limit 4000000))
  (labels ((sum-fibo (a b)
	   (cond
	     ((> b limit) sum)
             (t
	      (if (evenp b) (incf sum b))
	      (sum-fibo b (+ a b))))))
    (print (sum-fibo 1 1))))
