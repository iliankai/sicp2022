(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))

(define (cc amt cv)
  (cond ((= amt 0) 1)
        ((or (< amt 0) (no-more? cv)) 0)
        (else
         (+ (cc amt
                (except-first-de cv))
            (cc (- amt
                   (fd cv))
                cv)))))

(define (fd cv) (car cv))

(define (except-first-de cv) (cdr cv))

(define (no-more? cv) (null? cv))
                   

(cc 100 us-coins)

(cc 100 uk-coins)