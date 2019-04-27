(defun twoA(list)

 ; (if(not(listp (caar list)))(print (car list)
;				   )
 ;    )
				    
  (if(null list) '()

     (cond(( not(listp (car list)))
	
	     (twoA(cdr list)))	     
     	 		     
    (t (let((newlist (mapcar #'(lambda(z)(if(not(listp z)) z (car z))) list)))     
	 (terpri)
	 (loop for i in newlist
	do (princ i)
	      (princ " ") ))
       
        (twoA(mapcan #'(lambda(z)(if(not(listp z))'() (cdr z))) list))
	)))
  )
