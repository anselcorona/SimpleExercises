(#%require (only racket/base
                current-inexact-milliseconds))

(define (fib n)
  (if (<= n 2)
      1
      (+ (fib (- n 1)) (fib (- n 2)))))

(define a (current-inexact-milliseconds))
(fib 10)
(define b (current-inexact-milliseconds))
(- b a)