(defun fn (n)
    (loop for x from 1 to n
     do (format t "Hello World~%"))
)

(fn (read))
