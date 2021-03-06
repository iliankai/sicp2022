#lang sicp

(define square (lambda (x) (* x x)))


(define tree (list 1
                   (list 2
                         (list 3 4)
                         5)
                   (list 6 7)))

(define (square-tree tree)
  (tree-map square tree))

(define (tree-map proc tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (tree-map proc sub-tree)
             (proc sub-tree)))
       tree))

(square-tree tree)