(define (cont-frac n d k)
  (define (iter i)
    (if (>= i k)
        (/ (n i) (d i))
        (/ (n i)
           (+ (d i)
              (iter (+ i 1))))))
  (iter 1))

(define (d i)
  (if (= (remainder i 3) 2)
      (* 2 (/ (+ i 1) 3))
      1))
    
(+ 2 (cont-frac (lambda (i) 1.0) d 100))

