(define (count-change amt)
  (cc amt 5))

(define (cc amt koc)
  (cond ((= amt 0) 1)
        ((or (< amt 0) (= koc 0)) 0)
        (else (+ (cc amt
                     (- koc 1))
                 (cc (- amt
                        (fd koc))
                     koc)))))

(define (fd koc)
  (cond ((= koc 1) 1)
        ((= koc 2) 5)
        ((= koc 3) 10)
        ((= koc 4) 25)
        ((= koc 5) 50)))
