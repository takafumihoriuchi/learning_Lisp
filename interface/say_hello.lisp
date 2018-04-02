(defun say-hello ()
	(print "Please type your name:")
	(let ((name (read)))
		(print "Nice to meet you, ")
		(print name)))

; use 
; > (load "say_hello.lisp")
; or
; > (load 'say_hello.lisp)
; to load code in clisp environment