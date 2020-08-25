(use-modules (ice-9 format))

(define (fibonacci-sum-even limit)
  (let more ([sum 0] [a 1] [b 1])
    (format #t "~a\n" a)
    (if (> b limit)
	sum
	(let ((iseven (eqv? 0 (modulo b 2))))
	  (when iseven (set! sum (+ sum b)))
	  (more sum b (+ a b))))))

(fibonacci-sum-even 4000000)

  

   
    
  
