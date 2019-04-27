(defun 1A(depth branch)
  (princ "(A ")
  (let ((list '(B C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BX BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CX CY CZ)))
    (let ((c 0))
      (let ((newlist '()))
	(let ((nl '()))
	 
      (dotimes(y branch)
	
    (loop for i in list
          do(cond((< c branch)
	      (incf c)
	       
		  (push i newlist)

		  (pop list) list 
		  )))
    (setq c 0)
    (princ "(")
       (loop for q in newlist
	  do(push q nl)
	    )
     
       (princ (car nl))
       (princ " ")
		 (loop for x in list
		    do(cond((< c branch)
			    (incf c)
			    (incf depth)
			    (princ "(")
			    (princ x)
			    (princ ") ")
			    (pop list) list
			    (pop newlist) newlist
			    
			     )
			   )
		      )
        (princ ")")
		 (pop nl) nl
		 )
      (princ ")")
      )))))
