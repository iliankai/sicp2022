(load "prime.scm")

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list '())
        (filter
         (lambda (positions) (safe? positions))
         (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (cons new-row rest-of-queens))
                 (enumerator-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))

(define (safe? positions)
  (define (iter-check row-of-new-queen rest-queens distance)
    (if (null? rest-queens)
        #t
        (let ((current-queen (car rest-queens)))
          (if (or (= row-of-new-queen (+ current-queen 0))
                  (= row-of-new-queen (+ current-queen distance))
                  (= row-of-new-queen (- current-queen distance)))
              #f
              (iter-check row-of-new-queen
                          (cdr rest-queens)
                          (+ distance 1))))))
  (iter-check (car positions) (cdr positions) 1))


(queens 8)