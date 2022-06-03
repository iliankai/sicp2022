#lang sicp

(define (sq-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons (square (car things))
                    answer))))
  (iter (reverse items) nil))

(define square
  (lambda (x) (* x x)))

(sq-list (list 1 2 3 4))