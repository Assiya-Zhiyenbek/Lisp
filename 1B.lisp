(defun 1B(depth branch)
  (let ((list '(B C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BX BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CX CY CZ )))
  (let (( c 0) (q 0))
    (let (( d depth))
      
      (princ "(A")
      (dotimes(i  depth)
      (setq c (+ c (expt branch i)))
      )
    
    (loop for i from 1 to (1- c)
	
       do(cond((eq (1- d) i)
	       
	       (dotimes(x branch)
	       (princ " (")
	       (princ (car list))
	       (princ ")")
	       (pop list) list
	       (incf i)
	       )
	       (princ ")")
	       (setq i (1- i))
	       (cond((eq depth 4) (incf q)
		     (cond((eq 0 (mod q branch))
			(princ ")")
			(setq d (+ i (+ 1 branch))))
			  (t(setq d (+ i branch))
			    )
			    ))
		    (t
	       (setq d (+ depth i))))
	       )
	      (t
	       (princ " (")
	       (princ (car list))
	       (pop list) list
	       ))
	       )
    (princ ")")
    ))))
