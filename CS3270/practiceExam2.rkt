#lang racket

(define (numbers-sum lst)
(define (helper lst acc)(
cond [(null? lst) acc]
 [(> (car lst)0) (helper (cdr lst) (+ acc (* 2 (car lst))))]
 [else (helper (cdr lst) (+ acc (* (car lst) (car lst))))]
  ))

(helper lst 0)
  )

