;; SICP chapter 1 Exercises
;; 1.2

(/(+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
  (* 3 (- 6 2) (- 2 7)))

;; 1.3

(define (sum-of-squares x y)
  (+ (* x x) (* y y)))


(define (sum-of-sqr-largest-two x y z)
  (cond ((and (< z x) (< z y)) (sum-of-squares x y))
        ((and (< x y) (< x z)) (sum-of-squares y z))
        (else (sum-of-squares z x))))

;; 1.4

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; 1.5

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; 1.1.7 Newtons Method

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve-guess guess x)
  (average (/ x guess) guess))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve-guess guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; 1.6

(define
  (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter* guess x)
  "evals else resulting in overflow"
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve-guess guess x) x)))

;; 1.7
