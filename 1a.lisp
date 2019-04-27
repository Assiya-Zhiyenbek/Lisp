;Assiya Zhiyenbek

(defun oneA(list)

 (if(not(listp (car list)))(print (car list)))
				    
  (if(null list) '()

     (cond(( not(listp (car list)))
	
	     (oneA(cdr list)))	     
     	 		     
    (t (let((newlist (mapcar #'(lambda(z)(if(not(listp z)) z (car z))) list)))    
	 (terpri)
	 (loop for i in newlist
	do (princ i)
	  (princ " "))

	 (oneA(mapcan #'(lambda(z)(if(not(listp z))'() (cdr z))) list))
	)))
  
     )
  )
