(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* dx
     (sum f (+ a (/ dx 2.0)) add-dx b)))


(define (simpson f a b n)
  (define h (/ (- b a) (* 1.0 n)))

  (define (y k)
    (f (+ a (* k h))))

  (define (factor k)
    (cond ((or (= k 0) (= k n)) 1)
          ((odd? k) 4)
          (else 2)))

  (define (term k)
    (* (factor k)
       (y k)))
  (define (next k) (+ k 1))
  
  (* h
     (/ 1.0 3)
     (sum term 0 next n)))