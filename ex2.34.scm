
(define (accu op initial seq)
  (if (null? seq)
      initial
      (op (car seq)
          (accu op initial (cdr seq)))))

(define (horner-eval x coeff-seq)
  (accu (lambda (this-coeff higher-terms)
          (+ (* higher-terms x)
             this-coeff))
        0
        coeff-seq))

(horner-eval 2 (list 1 3 0 5 0 1))
          