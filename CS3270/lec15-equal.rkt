#lang racket

;; CS 3270 instructor
;; Vanderbilt University

;; Lecture 15 example


; Determine if two lists are identical
;
; @param two items to check for equality; could be lists or atoms
; @return #t|#f
(define (equal list1 list2)
  (cond
    ; predicate                      ; return value
    [(not (list? list1))             (eq? list1 list2)]
    [(not (list? list2))             #f]
    [(null? list1)                   (null? list2)]
    [(null? list2)                   #f]
    [(equal (car list1) (car list2)) (equal (cdr list1) (cdr list2))]
    [else                            #f]))

