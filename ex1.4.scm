(define (plus-abs a b)
  ((if (> b 0)
       +
       -)
   a
   b))