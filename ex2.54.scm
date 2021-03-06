(define (equal? a b)
  (cond ((and (symbol? a) (symbol b)) (eq? a b))
        ((and (list? a) (list? b)) (list-equal? a b))
        (else #f)))

(define (list-equal? a b)
  (cond ((and (null? a) (null? b)) #t)
        ((or (null? a) (null? b)) #f)
        ((equal? (car a) (car b)) (equal? (cdr a) (cdr b)))
        (else #f)))

(equal? 'symbol 'symbol)
(equal? 'symbol 'another-symbol)
(equal? (list 'a 'b 'c) (list 'a 'b 'c))
(equal? (list 'a) (list 'a 'b 'c))