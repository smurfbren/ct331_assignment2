#lang racket

(provide traverse)
(provide binary_search?)
(provide insert_item)
(provide insert_list)
(provide treesort)
(provide treesort_compare)

(define (value tree)
  (cadr tree))

(define (left_child tree)
  (car tree))

(define (right_child tree)
(caddr tree))

;Tree to be sorted
(define example_tree '(((() 10 ()) 9 (() 15 ())) 26 ((() 13 ()) 60 (() 45 ()))))

;Traverse the tree
(begin (cond [(not (empty? (left_child tree))) (traverse (left_child tree))])
       (cond [(not (empty? (right_child tree))) (traverse (right_child tree))]))