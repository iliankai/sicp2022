(define (reverse1 input-list)
  (define (iter rem result)
    (if (null? rem)
        result
        (iter (cdr rem)
              (cons (car rem) result))))
  (iter input-list '()))

(reverse1 (list 1 4 9 16 25))
