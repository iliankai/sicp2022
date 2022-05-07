(define (smaller x y)
  (if (< x y)
      x
      y))

(define (big2sum x y z)
  (- (+ x y z)
     (smaller x (smaller y z))))