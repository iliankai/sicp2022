(define (improve y x)
  (/ (+ (/ x
           (* y y))
        (* 2 y))
     3))

(define (good? y x)
  (> 0.0001
     (abs (- x
             (* y y y)))))

(define (cube-iter y x)
  (if (good? y x)
      y
      (cube-iter (improve y x) x)))

(define (cube-root x)
  (cube-iter 1.0 x))
           