(define (same-parity x . y)
  (define (iter rem-y result)
    (if (null? rem-y)
        result
        (if (even? (+ x (car rem-y)))
            (iter (cdr rem-y) (append result (list (car rem-y))))
            (iter (cdr rem-y) result))))
  (cons x (iter y '())))

(same-parity 1 2 3 4 5 6 7)
(newline)
(same-parity 2 3 4 5 6 7)


