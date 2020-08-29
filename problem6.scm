(use-modules (ice-9 format))

(define (sum-square-difference limit)
  (let* ([sum-square (let more ([val 1] [sum 0])
		      (if (> val limit) sum
			  (more (+ val 1) (+ sum (* val val)))))]
	[sum (let more ([val 1] [sum 0])
	       (if (> val limit) sum
		   (more (+ val 1) (+ sum val))))]
	[square-sum (* sum sum)]
	[diff (- square-sum sum-square)])
    (format #t "Sum square ~a, square sum ~a, diff ~a" sum-square square-sum diff)))

(sum-square-difference 100)
