(#%require (only racket/base
                current-inexact-milliseconds))
  

(define a (current-inexact-milliseconds))
(define d (current-inexact-milliseconds))
(define number '(1 2 3 4 5 6 7 8 9 10))
(define c #f)

(define (buscador n lst)
  (cond ((null? lst) c)
        ((eqv? n (car lst)) (+ n 0))
        (else (buscador n (cdr lst)))))


(buscador 4 number)

(define b (current-inexact-milliseconds))
(- b a)

(define a (current-inexact-milliseconds))

(define (escondedor n lst)
  (cond ((null? lst)
         '())
        ((eqv? n (car lst)) (append (list (string->symbol (string-append "*" (number->string n)))) (cdr lst)))
        (else (append  (list(car lst)) (escondedor n (cdr lst))))))

(escondedor 4 number)

(buscador 4 (escondedor 4 number))

(define b (current-inexact-milliseconds))
(- b a)
(define b (current-inexact-milliseconds))
(- b d)



