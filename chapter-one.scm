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

(sqrt 0.000000000000000004)

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

(define (good-enough? new-guess last-guess)
  (and (< (/ last-guess new-guess) 1.001)
       (> (/ last-guess new-guess) 1)))

(define (sqrt-iter new-guess last-guess x)
  (if (good-enough? new-guess last-guess)
      last-guess
      (sqrt-iter (improve-guess new-guess x) new-guess x)))

(define (sqrt x)
  (sqrt-iter (improve-guess 1.0 x) 1.0 x))

;; 1.8

(define (improve-cube-guess guess x)
  (/ (+ (/ x (square guess))(* 2 guess)) 3))

(define (cubert-iter new-guess last-guess x)
  (if (good-enough? new-guess last-guess)
      last-guess
      (cubert-iter
       (improve-cube-guess new-guess x) new-guess x)))

(define (cubert x)
  (cubert-iter (improve-guess 1.0 x) 1.0 x))

;; 1.9

(define (+ a b)
  "recursive version"
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

;;(+ 4 5)
;;(inc (+ 3 5))
;;(inc (inc (+ 2 5)))
;;(inc (inc (inc (+ 1 5))))
;;(inc (inc (inc (inc (5))))
;;(inc (inc (inc (6))))
;;(inc (inc (7))))
;;(inc (8))
;;9

(define (+ a b)
  "iterative version"
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
;;(+ 4 5)
;;(+ 3 6)
;;(+ 2 7)
;;(+ 1 8)
;;9

;; 1.10

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))
(A 1 10)
(A 2 4)
(A 3 3)

