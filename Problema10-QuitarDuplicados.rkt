(#%require (only racket/base
                current-inexact-milliseconds))

(define a (current-inexact-milliseconds))

(define (dupl l)
  (cond ((null? l)
         '())
        ((member (car l) (cdr l))
         (dupl (cdr l)))
        (else
         (cons (car l) (dupl (cdr l))))))
(define (quitar-dupl input)
  (define a (string->list (symbol->string input)))
  (string->symbol (list->string (dupl a))))

(quitar-dupl 'abcaedeb)
(quitar-dupl 'abc)
(quitar-dupl 'aaaabaaa)

(define b (current-inexact-milliseconds))
(- b a)
