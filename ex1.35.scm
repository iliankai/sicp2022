(define tolerance 0.00001)

(define (fp f f-guess)
  (define (close-enough? x y)
    (< (abs (- x y)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try f-guess))

(display (fp cos 1.0))
(newline)

(display (fp (lambda (y) (+ (sin y) (cos y))) 1.0))
(newline)

(display (fp (lambda (x) (+ 1.0 (/ 1 x))) 1.0))
(newline)