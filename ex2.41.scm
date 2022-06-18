(load "prime.scm")

(define (unique-triples n)
  (flatmap (lambda (i)
                   (map (lambda (j) (cons i j))
                        (unique-pairs (- i 1))))
           (enumerator-interval 1 n)))

(define (check-sum k triple)
  (= k (+ (car triple)
          (cadr triple)
          (caddr triple))))

(define (ex241 n k)
  (filter (lambda (i) (check-sum k i))
    (unique-triples n)))

(ex241 13 10)