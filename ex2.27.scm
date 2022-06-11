#lang sicp

(define (deep-reverse x)
  (cond ((null? x) nil)
        ((not (pair? x)) x)
        (else
         (reverse (list (deep-reverse (car x))
                        (deep-reverse (cadr x)))))))

(define a (list (list 1 2 8) (list 3 4 9)))



(deep-reverse a)
