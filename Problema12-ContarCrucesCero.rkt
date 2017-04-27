;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Problema12-ContarCrucesCero) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define a (current-milliseconds))

(define ls '(1 -2 0 -4 5))

(map (lambda (x) (cond [(positive? x)(- x (- x 1))]
                      [(negative? x)(- x (+ x 1))]
                      [(zero? x)(* x 1)]
  )) ls)

(define (cruza-cero count ls)
		(cond 
		    [(null? ls) (print count)]
		    [(eqv? (length ls) 1) (print count)]
		    [(eqv? (car ls) (car (cdr ls))) (cruza-cero count (cdr ls))]
			  [(not (eqv? (car ls) (car (cdr ls)))) (cruza-cero (+ count 1) (cdr ls))]
		)
	)

(cruza-cero 0 (remove 0 (map (lambda (x) (cond [(positive? x)(- x (- x 1))]
                      [(negative? x)(- x (+ x 1))]
                      [(zero? x)(* x 1)]
  )) ls) ))

(define b (current-milliseconds))

(- b a)
