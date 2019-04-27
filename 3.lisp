(defun p(tree)
  (if(null tree)
     '()
     ;(append
     (p(mapcar #'(lambda(x)(if(listp x)(car x) x))tree))
    ; (p(mapcan #'(lambda(x)(if(listp x)(car x) x )) tree))
     

     )
     )
  
  
