(define (small-divisor n)
  (find-d n 2))

(define (find-d n td)
  (cond ((> (* td td) n) n)
        ((div? td n) td)
        (else (find-d n (+ td 1)))))

(define (div? a b)
  (= (remainder b a) 0))

(display (small-divisor 199))
(newline)

(display (small-divisor 1999))
(newline)

(display (small-divisor 19999))
