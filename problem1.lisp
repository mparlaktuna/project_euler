(loop for i from 1 to 999
      when (or (zerop (mod i 3)) (zerop (mod i 5)))
	   sum i into summed
      finally (print summed))

