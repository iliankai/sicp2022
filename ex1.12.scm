(define (p x y)
  (cond ((or (= y 0) (= x y)) 1)
        ((< x y) 0)
        (else (+ (p (- x 1) y)
           (p (- x 1) (- y 1))))))