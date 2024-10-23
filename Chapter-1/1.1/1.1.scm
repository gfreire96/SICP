; Simple number.
10 ; Result: 10

; Addition, substraction and division.
(+ 5 3 4) ; Result: 5 + 3 + 4 = 12 
(- 9 1) ; Result: 9 - 1 = 8
(/ 6 2) ; Result: 6 / 2 = 3

; Addition with multiplication and subtraction.
(+ (* 2 4) (- 4 6))
; Step 1: (* 2 4) => 8 
; Step 2: (- 4 6) => -2
; Step 3: (+ 8 -2) => 6
;Result: 6

(define a 3) ; a is now defined as 3.
(define b (+ a 1)); b is now defined as (+ a 1)
; Step 1: (+ a 1) => (+ 3 1) => 4
; b is now defined as 4

; Equality check.
(= a b) ;Result: False because 3 is not equal to 4.

; If expression.
(if (and (> b a) (< b (* a b)))
      b
      a)
; Step 1: (> b a) => (> 4 3) => True
; Step 2: (* a b) => (* 3 4) => 12
; Step 3: (< b (*a b)) => (< 4 (12)) => True 
; Step 4: (and (True) (True)) => True
; Step 5: Result: b => 4

; Cond expression.
(cond ((= a 4) 6)
      ((= b 4 ) (+ 6 7 a))
      (else 25))
; Step 1: (= a 4) => False
; Step 2: (= b 4) => True => (+ 6 7 a)
; Step 3: Result: (+ 6 7 a) => (+ 6 7 3) => 16

; Addition with if expression.
(+ 2 (if (> b a) b a))
; Step 1: (> b a) => (> 4 3) => True
; Step 2: Result: (+ 2 b) => (+ 2 4) => 6

; Multiply with cond expression.
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
         (+ a 1))
; Step 1: (> a b) => (> 3 4) => False
; Step 2: (< a b) => (< 3 4) => True => b
; Step 3: (+ a 1) => (+ 3 1) => 4
; Step 4: (* b 4) => (* 4 4) => 16