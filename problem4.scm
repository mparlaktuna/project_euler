(use-modules (ice-9 format))

(define (is-palindromic val)
  (let* ([val-string (number->string val)]
	 [l (string-length val-string)])
    (if (odd? l) #f
	(let ([first-half (string-take val-string (/ l 2))]
	      [second-half (string-reverse (string-take-right val-string (/ l 2)))])
	  ;; (format #t "first half:~a second half:~a\n" first-half second-half)
	  (string=? first-half second-half)))))

(define (largest-palindrome-product)
  (let more ([val1 999] [val2 999] [result 0])
    (cond
     ((equal? val2 99) (more (- val1 1) 999 result))
     ((equal? val1 99) result)
     (else (let ([product (* val1 val2)])
	     (if (is-palindromic product)
		 (more val1 (- val2 1) (max result product))
		 (more val1 (- val2 1) result)))))))

;; (is-palindromic 906609)
(largest-palindrome-product)
	
    

