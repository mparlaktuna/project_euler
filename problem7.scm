`(use-modules (ice-9 format))

(define (10001st-prime)
  (let more ([count 10001] [prime 2])
    (if (zero? count) (- prime 1)
	(if (not (is-prime prime))
	    (more count (+ prime 1))
	    (begin
	      (format #t "Count ~a Prime ~a\n" count prime)
	      (more (- count 1) (+ prime 1)))))))

(define (is-prime val)
  (let more ([divider 2])
    (cond
     ((< val (* divider divider)) #t)
     ((zero? (modulo val divider)) #f)
     (else (more (+ divider 1))))))

(10001st-prime)
'
