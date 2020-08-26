(use-modules (ice-9 format))

(define (largest-prime-factor val)
  (let more ([divider 1] [largest-factor 1])
    (if (> divider (/ val 2))
	largest-factor
	(let ((is_factor (eqv? 0 (modulo val divider))))
	  (when (and is_factor (is-prime divider)) (set! largest-factor divider))
	  (more (+ divider 1) largest-factor)))))

(define (is-prime val)
  (let more ([divider 2])
    ;; (format #t "divider ~a" divider)
    (cond
     ((> divider (/ val 2)) #t)
     ((eqv? 0 (modulo val divider)) #f)
     (else (more (+ divider 1))))))
	
	

(largest-prime-factor 13195)
;; (is-prime 13)
