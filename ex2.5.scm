(define (cons1 a b)
  (* (expt 2 a) (expt 3 b)))

(define (depose c k)
  (if (= 0 (remainder c k))
      (+ 1 (depose (/ c k) k))
      0))

(define (car1 c)
  (depose c 2))

(define (cdr1 c)
  (depose c 3))




(define a (cons1 30 25))
(display a)
(newline)
(display (car1 a))
(newline)
(display (cdr1 a))
(newline)
