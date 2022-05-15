(define tolerance 0.00001)

(define (fp f f-guess)
  (define (close-enough? x y)
    (< (abs (- x y)) tolerance))
  (define (try guess i)
    (display i)
    (display ":")
    (display guess)
    (newline)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next (+ i 1)))))
  (try f-guess 1))

(display (fp (lambda (x) (/ (log 1000) (log x))) 2.0))
(newline)

(display (fp (lambda (x)
               (* 0.5
                  (+ x
                     (/ (log 1000) (log x)))))
             2.0))
(newline)