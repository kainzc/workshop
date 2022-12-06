#lang racket

; Find max element in a list of numbers.
; Note: Racket has an built-in function called max, but this function expects
;       the values as separate parameters and not passed as a list.
;
; @param  lst The list that will be searched for the maximum value.
; @return The maximum value in lst.
(define (my-max lst)
  (cond
    [(not (list? lst)) #f]
    [(null? lst) #f]
    [(not (number? (car lst))) #f]
    [(null? (cdr lst)) (car lst)]
    [#t (if (> (car lst) (my-max (cdr lst)))
            (car lst)
            (my-max (cdr lst)))]))


(define (my-max3 lst)
  (cond
    [(not (list? lst)) #f]
    [(null? lst) #f]
    [not (number? (car lst)) #f]
    [(null? (cdr lst) (car lst))]
    [#t (if (> (car lst) (my-max3 (cdr lst)))(car lst)(my-max3 (cdr lst)))]))


; Find max element in a list of numbers. 
; Note: Racket has an built-in function called max, but this function expects
;       the values as separate parameters and not passed as a list.
;
; @param  lst The list that will be searched for the maximum value.
; @return The maximum value in lst.
; Version using a LET expression.
(define (my-max2 lst)
  (cond
    [(not (list? lst)) #f]
    [(null? lst) #f]
    [(not (number? (car lst))) #f]
    [(null? (cdr lst)) (car lst)]  ; only 1 number?
    [#t (let ([head (car lst)]
              [max-rest (my-max2 (cdr lst))])
          (if (> head max-rest)
              head
              max-rest))]))


(define (double lst)
  (cond
    [(null? lst) '()]
    [(list? (car lst)) (cons (double (car lst)) (double (cdr lst)))]
    [(even? (car lst)) (cons (* 2 (car lst)) (double (cdr lst)))]
    [else (cons (car lst) (cdr lst))]
   ) )

(define (testing x)
(let* ([y (+ x 3)] [x (+ x 3)] [x (+ x 3)])
  (+ y x))
  )

(define (testing2 x) (let ([x (+ x 3)])
  (+ x 1))
  )


(define (sum first second lst)
  (cond
    [(null? lst) 0]
    [(> (car lst) first)
     (if (< (car lst) second) (+ (car lst) (sum first second (cdr lst))) (sum first second (cdr lst)))
     ]
    [(sum first second (cdr lst))]

    )
  )

(define (double2 lst)

  (cond
    [(null? lst) '()]
    [(list? (car lst))
     (cons (double2 (car lst)) (double2 (cdr lst)))
     ]
    [(even? (car lst)) (* 2 (car lst)) (double2 (cdr lst))
     ]
    [else double2 (cdr lst)]


   )

  


  )

; for testing the speed of the two solutions above
(define lst '(1 1 1 1 1 1 1 1 1 1 1 1 2 1 1 1 1 114 1 1 1 1 1 1 11 1 1 1 1))
    