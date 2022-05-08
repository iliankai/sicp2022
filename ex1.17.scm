(define (prod a b)
  (if (= b 0)
      0
      (+ a (prod a (- b 1)))))

(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (multi a b)
  (cond ((= b 0) 0)
        ((even? b) (multi (double a) (halve b)))
        (else (+ a
                 (multi a (- b 1))))))