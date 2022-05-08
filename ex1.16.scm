(define (fast-e b1 n1)

  (define (even? x)
    (= (remainder x 2) 0))
  
  (define (iter b n a)
    (cond ((= n 0) a)
          ((even? n) (iter (* b b) (/ n 2) a))
          (else (iter b (- n 1) (* b a)))))
  
  (iter b1 n1 1))