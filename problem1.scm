(use-modules (ice-9 format))

(define (find-sum-3-5-under limit)
  (let more ([sum 0] [limit (- limit 1)])
    ;; (format #t "Sum ~a, limit ~a\n" sum limit) ;
    (if (eqv? 0 limit)
	sum
	(let ((modulo3 (eqv? 0 (modulo limit 3)))
	      (module5 (eqv? 0 (modulo limit 5))))
	  (when (or module5 modulo3)
	    (set! sum (+ sum limit)))
	  (more sum (- limit 1))))))

(find-sum-3-5-under 1000)
