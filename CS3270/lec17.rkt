#lang racket

;; CS 3270 instructor
;; Vanderbilt University

;; Lecture 17 examples


; Compute the factorial of n (tail recursive version).
;
; @param  n  The number to compute factorial of.
; @return the factorial of n
(define (factTR n)
  (define (helper n acc)
    (if (<= n 0)
      acc
      (helper (- n 1) (* n acc)))
  )
  (helper n 1)
)



; Compute the length of a list (tail recursive version).
; Note: Racket has an built-in function called length.
;
; @param  lst The list to determine its length.
; @return The length of lst.
(define (my-lenTR lst)
  (define (helper lst acc)
    (if (null? lst)
        acc
        (helper (cdr lst) (add1 acc))))
  (helper lst 0))



; Compute the reverse of a list (tail recursive version).
; Note: Racket has an built-in function called reverse.
;
; @param  lst The list to be reversed.
; @return The reversed version of lst.
(define (my-revTR lst)
  (define (helper lst acc)
    (if (null? lst)
        acc
        (helper (cdr lst) (cons (car lst) acc))))
  (helper lst '()))





; Find max element in a list of numbers (tail recursive version).
; Helper function defined with a lambda expression.
; Note: Racket has an built-in function called max, but this function expects
;       the values as separate parameters and not passed as a list.
;
; @param  lst The list that will be searched for the maximum value.
; @return The maximum value in lst.
(define (my-maxTR-letrec lst)
  (letrec ([helper (lambda (lst acc)
                     (if (null? lst)
                         acc
                         (if (> (car lst) acc)
                             (helper (cdr lst) (car lst))
                             (helper (cdr lst) acc))))])
    (helper (cdr lst) (car lst))))

  



; Find max element in a list of numbers (tail recursive version).
; Helper function defined with a define function.
;
; @param  lst The list that will be searched for the maximum value.
; @return The maximum value in lst.
(define (my-maxTR-define lst)
  (define (helper lst acc)
    (if (null? lst)
        acc
        (if (> (car lst) acc)
            (helper (cdr lst) (car lst))
            (helper (cdr lst) acc))))
    (helper (cdr lst) (car lst)))





; Increments the number of times as the value passed as a parameter.
; A normal recursive solution.
;
; Compare the speed of inc-rec and inc-iter (below) by calling
; (time (inc-rec 999999)) and (time (inc-iter 999999))
;
; @param  n The number of times to increment.
; @return The total incremented value.
(define (inc-rec n)
  (if (= n 0)
      1
      (+ 1 (inc-rec (- n 1)))))


; Increments the number of times as the value passed as a parameter.
; A tail recursive solution.
;
; @param  n The number of times to increment.
; @return The total incremented value.
(define (inc-iter n)  ; Really a recursive function.
  (define (inc-tail num acc)
    (if (= num 0)
        acc
        (inc-tail (- num 1) (+ acc 1))))
  (inc-tail n 1))

(define (sum_of_positives list)(if (empty? list) 0 (if (> (car list) 0) (+ (car list) (sum_of_positives (cdr list))) (+ 0 (sum_of_positives (cdr list))))))

(lambda (s n b h) (* (/(sqrt s) n) (/(* b h) (+ b (* 2 h)))))


(define (double lst)
  (cond [(null? lst)'()]
        [(list?) ]



   )
  

  )
 
