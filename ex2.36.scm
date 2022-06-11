(define (accu op initial seq)
  (if (null? seq)
      initial
      (op (car seq)
          (accu op initial (cdr seq)))))

(define (accu-n op init seqs)
    (if (null? (car seqs))
        '()
        (cons (accu op init (map car seqs))
              (accu-n op init (map cdr seqs)))))

(define s (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12)))

(display s)

(accu-n + 0 s)

