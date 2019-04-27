(defun dfs(list find)
  (princ (car list))
  (princ " ")
  (loop for i in (cdr list)
     do(cond((listp i)
	     (cond(( eq find (car i))
		   (princ (car i))

		   (return)))
	     (princ (car i))
	     (princ " ")
	    
	     (loop for j in (cdr i)
		do(cond((eq find (car j))
			(princ (car j))

			(return)))
		       
		   (princ (car j))
		  (princ " ")
		  (princ (car i))
		  (princ " "))))

       (princ (car list))
       (princ " "))

  )
  
       
