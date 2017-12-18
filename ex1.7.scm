(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
        (average guess (/ x guess)))

(define (average x y)
        (/ (+ x y) 2.0))

;(define (good-enough? guess x)
;        (< (abs (- (* guess guess) x)) 0.001))

(define (good-enough? guess x)
        (< (abs (- (improve guess x) guess)) 0.001))

(define (sqt x)
        (sqrt-iter 1.0 x))

