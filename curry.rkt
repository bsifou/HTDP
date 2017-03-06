#lang racket

(define (curry2 f)
  (lambda(x)
    (lambda(y)
      (f x y))))


(define (uncurry2 f)
  (lambda (x z)
  ((f x) z)))


(define double ((curry2 *) 2))

(define double2
  (lambda (x)
    (* x 2)))


(double2 3)

(lambda (3) (* 3 2))
(* 3 2)
6


(double 3)
(((curry2 *) 2) 3)
((lambda (y) (* 2 y)) 3)
(lambda (y) (* 2 3))



 

