;; (defparameter pos '(0 . 0))

(defun move-right (pos)
  (cons (1- (car pos)) (cdr pos)))

(defun move-down (pos)
  (cons (car pos) (1- (cdr pos))))

(defun move (x)
  (let ((cache (make-hash-table :test #'equal)))
    (labels ((more (pos)
	       (let ((count 0))
		 (format t "Cache:~a~%" cache)

		 (if (gethash pos cache)
		     (progn
		       (format t "Using cache ~a" pos)
		       (incf count (gethash pos cache)))
		     (progn 
		       (cond
			 ((and (zerop (car pos)) (zerop (cdr pos)))
			  (incf count))
			 ((zerop (car pos)) (incf count (more (move-down pos))))
			 ((zerop (cdr pos)) (incf count (more (move-right pos))))
			 (t
			  (incf count (more (move-right pos)))
			  (incf count (more (move-down pos)))))
		       (setf (gethash pos cache) count)))
		 count)))
      (iter (for i from 1 to (1- x))
	(more (cons i i))
        (finally (return (more (cons x x))))))))

