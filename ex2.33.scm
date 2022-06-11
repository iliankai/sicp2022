
(define (accu op initial seq)
  (if (null? seq)
      initial
      (op (car seq)
          (accu op initial (cdr seq)))))

(define (map1 p seq)
  (accu (lambda (x y) (cons (p x) y)) '() seq))

(define (append1 seq1 seq2)
  (accu cons seq2 seq1))

(define (length1 seq)
 (accu (lambda (x y) (+ 1 y)) 0 seq))


;=================================
(define a (list 1 2 3 4 5 6))
(define b (list 8 9 10))
(accu + 0 (list 1 2 3 4 5))

(newline)
(display 'map1)
(newline)
(map1 (lambda (x) (* x x)) a)
(newline)

(display 'append1)
(newline)
(append1 a b)
(newline)

(display 'length1)
(newline)
(length1 a)


