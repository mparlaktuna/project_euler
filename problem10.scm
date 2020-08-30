(use-modules (ice-9 format))

(define (sum-primes)
  (let more ([val 2] [sum 0])
    (if (eq? val 2000000) sum
	(if (is-prime val)
	    (more (+ val 1) (+ sum val))
	    (more (+ val 1) sum)))))

(define (is-prime val)
  (let more ([divider 2])
    (cond
     ((< val (* divider divider)) #t)
     ((zero? (modulo val divider)) #f)
     (else (more (+ divider 1))))))
(sum-primes)
