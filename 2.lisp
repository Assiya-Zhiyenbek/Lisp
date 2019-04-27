


(defun w(list)
    
 (if(null list) '()

     (cond(( not(listp (car list)))
	   (princ (car list))
	   (princ ", ")
	   (let((root (cdr (mapcar #'(lambda(x)(if(listp x)(car x)x))list))))
	     (loop for i in root
		do (princ i)
		  (princ " ")))
	   
	     (w(cdr list)))
	     
       (t (let((newlist (mapcar #'(lambda (x) (mapcar #'(lambda (y) (if(listp y) (car y))) x)) list)))  

	   	 
	   (loop for i in newlist
	      do (let((newl i))
		   (terpri)
		   (loop for i in newl
		
		      do(cond((not (null i))
			 (princ i)
			 (princ " ")))
	  )))
	  
        (w(mapcan #'(lambda(x)(if(listp x)(cdr x))) list))
	))))
  )
