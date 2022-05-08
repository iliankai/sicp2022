(define (f1 n)
  (if (< n 3)
      n
      (+ (f1 (- n 1))
         (* 2
            (f1 (- n 2)))
         (* 3
            (f1 (- n 3))))))


(define (f2 n)
  (define (iter p q r cnt)
    (if (= cnt n)
        r
        (iter (+ (* 1 p) 
                 (* 2 q)
                 (* 3 r))
              p
              q
              (+ cnt 1))))
  (iter 2 1 0 0))

        