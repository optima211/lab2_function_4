(defun f()
  (princ "Vvedite spisok")
  (terpri)
  (setq L (read))
  (princ "Vvedite X")
  (terpri)
  (setq X (read))
  (princ "Result=")
  (subr L X)
)

(defun subr (L X)
  (cond
    ((null L) nil)
    ((equal (car L) X) (subr (cdr L) X))
    (t (cons (car L) (subr (cdr L) X)))
  )
)