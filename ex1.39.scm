(define (cont-frac n d k)
  (define (iter i)
    (if (>= i k)
        (/ (n i) (d i))
        (/ (n i)
           (+ (d i)
              (iter (+ i 1))))))
  (iter 1))

(define (tan-cf x k)
  (define (n i)
    (if (= i 1)
        x
        (- 0 (* x x))))

  (define (d i)
    (- (* 2 i) 1))

  (exact->inexact (cont-frac n d k)))

