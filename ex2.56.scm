(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp)
         (if  (same-variable? exp var) 1 0))
        ((sum? exp)
         (make-sum (deriv (addend exp) var)
                   (deriv (augend exp) var)))
        ((product? exp)
         (make-sum (make-product (multiplier exp)
                                 (deriv (multiplicand exp) var))
                   (make-product (deriv (multiplier exp) var)
                                        (multiplicand exp))))
        ((exponentation? exp)
         (make-product (exponent exp)
                       (make-product (make-exponentation (base exp)
                                                         (- (exponent exp) 1))
                                     (deriv (base exp) var))))
                       
        (else (error "unknown type" exp))))

(define (variable? x) (symbol? x))

(define (same-variable? a b)
  (and (variable? a) (variable? b) (eq? a b)))

(define (make-sum a b)
  (cond ((=number? a 0) b)
        ((=number? b 0) a)
        ((and (number? a) (number? b)) (+ a b))
        (else (list '+ a b))))

(define (make-product a b)
  (cond ((or (=number? a 0) (=number? b 0)) 0)
        ((=number? a 1) b)
        ((=number? b 1) a)
        ((and (number? a) (number? b)) (* a b))
        (else (list '* a b))))

(define (=number? a b)
  (and (number? a) (= a b)))


(define (sum? x)
  (and (pair? x) (eq? (car x) '+)))

(define (addend x) (cadr x))

(define (augend x) (caddr x))

(define (product? x)
  (and (pair? x) (eq? (car x) '*)))

(define (multiplier x) (cadr x))

(define (multiplicand x) (caddr x))

(define (exponentation? x)
  (and (pair? x) (eq? (car x) '**)))

(define (base x) (cadr x))

(define (exponent x) (caddr x))

(define (make-exponentation b e)
  (cond ((= e 0) 1)
        ((= e 1) b)
        (else (list '** b e))))

(define (make-product2 a b c)
  (list '* a b c))

(deriv (list '** 'x '6 'x) 'x)
  