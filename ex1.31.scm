;(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (+ (term a) result))))
  (iter a 0.0))

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (* (term a) result))))
  (iter a 1.0))

(define (factorial a b)
  (define (term x) x)
  (define (next x) (+ x 1))
  (product-iter term a next b))

(define (pi n)
  (define (next x) (+ x 2))
  (define (term x) (/ (* (- x 1) (+ x 1)) (* x x)))
  (* 4.0 (product term 3 next n)))

(define (pii n)
  (define (next x) (+ x 2))
  (define (term x) (/ (* (- x 1) (+ x 1)) (* x x)))
  (* 4.0 (product-iter term 3 next n)))