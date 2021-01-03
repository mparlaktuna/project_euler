(defun is-prime (n &optional (d 2))
  (cond
    ((< n (* d d)) t)
    ((zerop (mod n d)) nil)
    (t (is-prime n (incf d)))))

(iter (for i from 2 to 2000000)
      (when (is-prime i)
	(sum i into summation))
      (finally (print summation)))
