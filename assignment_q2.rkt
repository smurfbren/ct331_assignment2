#lang racket


(provide ins_beg)
(provide ins_end)
(provide cout_top_level)
(provide count_instances)
(provide count_instances_tr)
(provide count_instances_deep)

(define (ins_beg en 1st)
(append (list en) 1st))

(define (ins_end en 1st)
(append 1st (list en)))

(define (cout_top_level lst)
  (if (empty? lst)
      0
(+ 1 (cout_top_level (cdr lst)))))

(define (count_instances item lst)
  (cond
    [(empty? lst) 0]
    [(equal? item (car lst)) (+ 1 (count_instances item (cdr lst)))]
[else (count_instances item (cdr lst))]))

(define (count_instances item lst)
  (cond [(null? lst) 0]
        [(equal? item (car lst)) (+ 1 (count_instances item (cdr lst)))]
[else (count_instances item (cdr lst))]))


