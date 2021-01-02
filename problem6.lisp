(ql:quickload :iterate)
(use-package :iter)

(defun sum-square-diff (x)
  (iter (for i from 1 to 100)
    (collect (* i i) into sqr)
    (sum i into sm)
    (finally (return (- (* sm sm) (reduce #'+ sqr) )))))

(sum-square-diff 100)
