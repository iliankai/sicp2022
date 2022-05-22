(define (perimeter-rec rec)
  (* 2
     (+ (length-rec rec)
        (width-rec rec))))

(define (area-rec rec)
  (* (length-rec rec)
     (width-rec rec)))
