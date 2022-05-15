(define (inc x) (+ x 1))

(define (square x) (* x x))

(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (repeated f n)
  (if (= n 1)
      f
      (compose f
               (repeated f (- n 1)))))

(define dx 0.00001)

(define (sm f)
  (lambda (x)
    (/ (+ (f (- x dx))
          (f x)
          (f (+ x dx)))
       3.0)))
  
(define (smooth f n)
  (let ((nt (repeated sm n)))
    (nt f)))