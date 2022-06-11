#lang sicp

(define square (lambda (x) (* x x)))


(define tree (list 1
                   (list 2
                         (list 3 4)
                         5)
                   (list 6 7)))

(define (square-tree1 x)
  (cond ((null? x) nil)
        ((not (pair? x)) (square x))
        (else (cons (square-tree1 (car x))
                    (square-tree1 (cdr x))))))

(square-tree1 tree)

(define (square-tree2 x)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (square-tree2 sub-tree)
             (square sub-tree)))
       x))

(square-tree2 tree)