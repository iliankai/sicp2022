(define (accu op initial seq)
  (if (null? seq)
      initial
      (op (car seq)
          (accu op initial (cdr seq)))))

(define folder-right accu)

(define (folder-left op initial seq)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter initial seq))

(display (folder-right / 1 (list 1 2 3)))
(newline)

(display (folder-left / 1 (list 1 2 3)))
(newline)

(display (folder-right list '() (list 1 2 3)))
(newline)

(display (folder-left list '() (list 1 2 3)))
(newline)
