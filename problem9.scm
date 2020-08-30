(use-modules (ice-9 format))


(define (special-pythagorean-triplet)
  (let more ([a 2] [b 3])
    (let ([c (- (- 1000 b) a)])
      (if (<= c b) (more (+ a 1) (+ a 2))
	  (if (eq? (+ (* a a) (* b b)) (* c c))
	      (* a b c)
	      (more a (+ b 1)))))))

(special-pythagorean-triplet)
    
