(define (prime? n)
  (define (fd td)
    (cond ((> (square td) n) n)
          ((divides? td n) td)          
          (else (fd (+ td 1)))))

  (define (divides? a b)
    (= (remainder b a ) 0))
  
  (= n (fd 2)))

(define (accu op initial seq)
  (if (null? seq)
      initial
      (op (car seq)
          (accu op initial (cdr seq)))))

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