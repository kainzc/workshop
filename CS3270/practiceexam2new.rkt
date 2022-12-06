#lang racket

(define (combine lst1 lst2)
(cond [(and (null? lst1) (null? lst2)) '()]
      [(null? lst1) lst2]
      [(null? lst2) lst1]
      [(> (car lst1) (car lst2)) (cons (car lst2) (cons (car lst1) (combine (cdr lst1) (cdr lst2))) )]
      [else (cons (car lst1) (cons (car lst2) (combine (cdr lst1) (cdr lst2))))]



 )



  )