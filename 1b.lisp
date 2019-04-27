;Assiya Zhiyenbek
(defun oneB(list)
  
 (if(null list) '()

     (cond(( not(listp (car list)))
	   (princ (car list))
	   (princ ", ")
	   (let((root (cdr (mapcar #'(lambda(z)(if(not(listp z)) z (car z)))list))))
	     (loop for i in root
		do (princ i)
		  (princ " ")))
	   
	     (oneB(cdr list)))
	     
       ((let((newlist (mapcar #'(lambda (z) (mapcar #'(lambda (q) (if(not(listp q)) q (car q))) z)) list)))  
	    
	   (loop for i in newlist
	      do (let((newl i))
		   (terpri)
		   (loop for i in newl
		      do(cond((eq i (car newl))
			   (princ i)
			   (princ ", "))
			  (t (princ i)
			(princ " ")))
	   		   )
		   ))
        (oneB(mapcan #'(lambda(z)(if(not(listp z)) '() (cdr z))) list))
	))))
 )
 
