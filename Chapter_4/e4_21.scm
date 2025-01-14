#lang sicp

((lambda (n)
  ((lambda (fact)
     (fact fact n))
   (lambda (ft k)
     (if (= k 1)
         1
         (* k (ft ft (- k 1)))))))
 10)

;上式可以算出阶乘

;a
((lambda (n)
  ((lambda (fib)
     (fib fib n))
   (lambda (f n)
     (cond ((= n 0) 0)
           ((= n 1) 1)
           (else
            (+ (f f (- n 2)) (f f (- n 1))))))))
 3)

;b
(define (f x)
  (define (even? n)
    (if (= n 0)
        true
        (odd? (- n 1))))
  (define (odd? n)
    (if (= n 0)
        false
        (even? (- n 1))))
  (even? x))

(define (f x)
  ((lambda (even? odd?)
     (even? even? odd? x))
   (lambda (ev? od? n)
     (if (= n 0) true (od? ev? od? (- n 1))))
   (lambda (ev? od? n)
     (if (= n 0) false (ev? ev? od? (- n 1))))))
     
         