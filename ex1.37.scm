(define tolerance 0.00001)

(define (cont-frac n d k)
  (define (iter i)
    (if (>= i k)
        (/ (n i) (d i))
        (/ (n i)
           (+ (d i)
              (iter (+ i 1))))))
  (iter 1))

(define (cont-frac2 n d k)
  (define (iter i res)
    (if (= i 1)
        res
        (iter (- i 1)
              (/ (n i)
                 (+ (d i) res)))))
  (iter k
        (/ (n k) (d k))))

(define k 11)

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           k)

(newline)

(cont-frac2 (lambda (i) 1.0)
            (lambda (i) 1.0)
            k)