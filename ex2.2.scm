(define (make-seg p q) (cons p q))
(define (start-seg seg) (car seg))
(define (end-seg seg) (cdr seg))

(define (make-point x y) (cons x y))
(define (x-point point) (car point))
(define (y-point point) (cdr point))

(define (pp p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ", ")
  (display (y-point p))
  (display ")"))

(define p (make-point 2 3))
(define q (make-point 8 11))

(pp p)
(pp q)

(define (midpoint-seg seg)
  (make-point (/ (+ (x-point (start-seg seg))
                    (x-point (end-seg seg)))
                 2.0)
              (/ (+ (y-point (start-seg seg))
                    (y-point (end-seg seg)))
                 2.0)))

(pp (midpoint-seg (make-seg p q)))

              