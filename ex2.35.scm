(define (accu op initial seq)
  (if (null? seq)
      initial
      (op (car seq)
          (accu op initial (cdr seq)))))

(define tree (cons (list 1 2) (list 3 4)))

(define (count-leaves t)
  (accu () 0 (map () ())))