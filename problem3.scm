#!/usr/local/bin/guile -s
!#
(use-modules (ice-9 format))

(define (largest-prime-factor val)
  (let more ([divider 1] [largest-factor 1])
    (if (> divider (sqrt val))
	largest-factor
	(let ((is_factor (eqv? 0 (modulo val divider))))
	  (when (and is_factor (is-prime divider)) (set! largest-factor divider))
	  (more (+ divider 1) largest-factor)))))

(define (is-prime val)
  (let more ([divider 2])
    (cond
     ((< val (* divider divider)) #t)
     ((zero? (modulo val divider)) #f)
     (else (more (+ divider 1))))))

(format #t "Largets prime factor ~a\n" (largest-prime-factor 600851475143))


