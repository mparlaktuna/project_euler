(defun seq (n &optional (count 1))
  ;; (format t "N:~a count:~a~%" n count)
  (cond
    ((equal n 1) count)
    ((evenp n) (seq (/ n 2) (incf count)))
    (t (seq (+ 1 (* 3 n)) (incf count)))))


(defun more (&optional (n 1) (max 1) (max-value 1))
  (format t "N: ~a max: ~a~%" n max)
  (if (> n 1000000)
      max-value
      (let ((count (seq n)))
	(if (> count max)
	    (more (1+ n) count n)
	    (more (1+ n) max max-value)))))

            


    
    

