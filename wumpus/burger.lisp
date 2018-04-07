(defun ingredients (order)
	(mapcan (lambda (burger)
		(case burger
			(single (list 'patty))
			(double (list 'patty 'patty))
			(double-cheese (list 'patty 'patty 'cheese))))
	order))

; (ingredients '(single double-cheese double))