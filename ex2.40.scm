(load "prime.scm")

(define (flatmap proc seq)
  (accu append '() (map proc seq)))

(define (unique-pairs n)
  (flatmap
    (lambda (i)
      (map (lambda(j) (list i j))
        (enumerator-interval 1 (- i 1))))
    (enumerator-interval 1 n)))

(define (enumerator-interval low high)
  (if (> low high)
      '()
      (cons low (enumerator-interval (+ low 1) high))))

(define (prime-sum-pairs n)
  (map make-pair-sum
    (filter prime-sum?
      (unique-pairs n))))

(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))

(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))

(prime-sum-pairs 6)