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

