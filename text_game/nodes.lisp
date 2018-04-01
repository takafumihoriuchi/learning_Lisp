(defparameter *nodes* '((living-room (you are in the living-room. a wizard is snoring loudly on the couch.))
					   (garden (you are in a beautiful garden. there is a well in front of you.))
					   (attic (you are in the attic. there is a giant welding torch in the corner.))))

(defparameter *nodes* '((living-room (you are in the living-room. a wizard is snoring loudly on the couch.)) (garden (you are in a beautiful garden. there is a well in front of you.)) (attic (you are in the attic. there is a giant welding torch in the corner.))))

(defun describe-location (location nodes)
	(cadr (assoc location nodes)))

(defun describe-location (location nodes) (cadr (assoc location nodes)))

(describe-location 'living-room *nodes*)
(describe-location 'garden *nodes*)
(describe-location 'attic *nodes*)

(defparameter *edges* '((living-room (garden west door)
									 (attic upstairs ladder))
						(garden (living-room east door))
						(attic (living-room downstairs ladder))))

(defparameter *edges* '((living-room (garden west door) (attic upstairs ladder)) (garden (living-room east door)) (attic (living-room downstairs ladder))))

(defun describe-path (edge)
	`(there is a ,(caddr edge) going ,(cadr edge) from here.))

(defun describe-path (edge) `(there is a ,(caddr edge) going ,(cadr edge) from here.))

(describe-path '(garden west door))

(defun describe-paths (location edges)
	(apply #'append (mapcar #'desctibe-path (cdr (assoc location edges)))))

(defun describe-paths (location edges) (apply #'append (mapcar #'desctibe-path (cdr (assoc location edges)))))