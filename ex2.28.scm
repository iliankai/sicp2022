#lang sicp

(define (fringe x)
  (cond ((null? x) nil)
        ((not (pair? x)) (list x))
        (else (append (fringe (car x))
                      (fringe (cdr x))))))

(define a (list (list 1 2) 5 (list 3 4)))

(fringe a)