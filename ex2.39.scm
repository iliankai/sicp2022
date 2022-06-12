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

(define (rev1 seq)
  (folder-right (lambda (x y) (append y (list x))) '() seq))

(define a (list 1 2 3 4 5))
(display (rev1 a))
(newline)

(define (rev2 seq)
  (folder-left (lambda (x y) (cons y x)) '() seq))

(display (rev2 a))
(newline)