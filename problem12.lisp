(defun count-divisor (x)
  (let ((divs '())
	(fac-list (factors x)))
    (iter (for i in fac-list)
      (cond
	((equal i 1) nil)
	((assoc i divs) (incf (cdr (assoc i divs))))
	(t (push (cons i 1) divs)))
      (finally
       (return (reduce #'(lambda (x1 x2)
			   (* x1 (incf (cdr x2)))) divs :initial-value 1))))))

(defun triangle-number (&optional (x 1) (count 2))
  (let ((div (count-divisor x)))
    (if (>= div 500)
	(progn
	  (format t "Div: ~a x:~a count:~a~%" div x count)
          x)
	(triangle-number (+ x count) (incf count)))))

(defun factors (N &optional (fs '()) (div 2))
  (cond
    ((equal N 1) fs)
    ((zerop (mod N div))
     (push div fs)
     (factors (/ N div) fs div))
    (t (factors N fs (incf div)))))
     

