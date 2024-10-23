; Exercise 1.3 sum of the squares of the two larger numbers.

(define (sum-square-largers x y z)
      (cond 
            ((and (<= x y)(<= x z)) (+ (* y y)(* z z)))
            ((and (<= y x)(<= y z)) (+ (* x x)(* z z)))
            (else (+ (* y y)(* x x)))))