;; If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
;; Find the sum of all the multiples of 3 or 5 below 1000. ;

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
