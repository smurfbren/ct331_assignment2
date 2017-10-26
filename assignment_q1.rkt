#lang racket

;A cons pair of two numbers
(cons 12 4)

;A list of 3 numbers using the cons function
(cons 7 (cons 14 (cons 21 empty)))

;A list with a string, a number and a nested list of three numbers using the cons function
(cons "Test" (cons 25 (cons (cons 10 (cons 11 (cons 12 empty))) '())))

;A list with a string, a number and a nested list of three numbers using the the list function
(list "Hello" 1 (list 20 40 60))

;A list with a string, a number and a nested list of three numbers using the the the append function
(append '("Programming") '(1) '((20 40 60)))