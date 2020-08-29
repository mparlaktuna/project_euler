(use-modules (ice-9 format))

(define (smallest-multiple limit)
  (let more ([values (iota limit 1 1)] [multipliers '()])
    (format #t "Values ~a\n" values)
    (cond
     ((null? values) (let prod ([val 1] [multipliers multipliers])
		       (if (null? multipliers) val
			   (prod (* val (car multipliers)) (cdr multipliers)))))
     ((eq? (car values) 1) (more (cdr values) multipliers))
     (else (let ([divider (car values)]
		 [rest (cdr values)])
	     (set! multipliers (cons divider multipliers ))
	     (more (map (lambda (x)
			  (if (zero? (modulo x divider))
			      (/ x divider)
			      x)) rest)
		   multipliers))))))
		   

    

(smallest-multiple 20)
