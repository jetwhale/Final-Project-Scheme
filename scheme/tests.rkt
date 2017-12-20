#lang racket

;; Testing apparatus for assignment 4

(require "desugar.rkt")
(require "cps.rkt")
(require "utils.rkt")
(require "closure-convert.rkt")
(require "top-level.rkt")


(define ((make-test kind path) exp ext)
  (match (cons kind ext)
         [(cons 'clo "scm")
          (lambda ()
            ;(display (format "Running closure conversion (scm) test ~s\n" path))
            (define cps (cps-convert (anf-convert (alphatize (assignment-convert (simplify-ir (desugar (top-level exp))))))))
            (define t0 (test-closure-convert closure-convert cps))
            t0)]
         [(cons 'clo "cps")
          (lambda ()
            ;(display (format "Running closure conversion (cps) test ~s\n" path))
            (define t0 (test-closure-convert closure-convert (top-level exp)))
            t0)]
         [(cons 'to-llvm "scm")
          (lambda ()
            (display (format "Running llvm (scm) test ~s\n" path))
            (define cps (cps-convert (anf-convert (alphatize (assignment-convert (simplify-ir (desugar (top-level exp))))))))
            (define pr (closure-convert cps))
            ;(displayln pr)
            ; (if (or (equal? path "tests/runtime/integer_overflow_2.scm")) (equal? path "tests/runtime/integer_overflow_1.scm")))
            (define o (test-err->llvm proc->llvm pr))
            ;(pretty-print o)
            (define r (open-output-string))
            (display path r)
            (define p (get-output-string r))
            (match o
                ["Integer Overflow Error"
                  
                  (if (or (equal? p "tests/runtime/integer_overflow_1.scm") (equal? p "tests/runtime/integer_overflow_2.scm"))
                    #t
                    #f)
                  ]
                ["Integer Underflow Error"
                  (if (or (equal? p "tests/runtime/integer_underflow_1.scm") (equal? p "tests/runtime/integer_underflow_2.scm"))
                    #t
                    #f)]
                ["Divide By Zero Error"
                  (if (or (equal? p "tests/runtime/divide_zero_1.scm") (equal? p "tests/runtime/divide_zero_2.scm"))
                    #t
                    #f)]
                [else
                  (begin 
                    (define t0 (test-top-level top-level exp))
                    ;(define pr (closure-convert cps))
                    (if (and (proc-exp? pr) t0)
                        (test-proc->llvm proc->llvm pr)
                        #f)
                    )]
                )
            ; (if (or (equal? path "tests/runtime/integer_overflow_2.scm")) (equal? path "tests/runtime/integer_overflow_1.scm")))

            ; (if (or (equal? path "tests/runtime/integer_overflow_2.scm")) (equal? path "tests/runtime/integer_overflow_1.scm")))

            )]
         [(cons 'to-llvm "cps")
          (lambda ()
            ;(display (format "Running llvm (cps) test ~s\n" path))
            (define t0 (test-closure-convert closure-convert (top-level exp)))
            (define pr (closure-convert exp))
            (if (and (proc-exp? pr) t0)
                (test-proc->llvm proc->llvm pr)
                #f))]))

(define (tests-list dir)
  (map
   (lambda (path)
     (string->path
      (string-append "tests/" dir "/"
                     (path->string path))))
   (filter (lambda (path)
             (define p (path->string path))
             (member (last (string-split p ".")) '("cps" "scm")))
           (directory-list (string-append "tests/" dir "/")))))

(define ((path->test type kind) p)
  (define filename (last (string-split (path->string p) "/")))
  `(,(string-append (symbol->string kind) "-" (last (string-split (string-join (drop-right (string-split (path->string p) ".") 1) ".") "/")))
    ,type
    ,((make-test kind p)
      (with-input-from-file p read-begin #:mode 'text)
      (last (string-split (path->string p) ".")))))

(define (count-make-vectors e)
  ; For extra-credit test to check efficiency
  (length (filter (lambda (x) (eq? x 'make-vector)) (flatten e))))

(define (time-llvm-eval ll)
  (define ms0 (current-milliseconds))
  (eval-llvm ll)
  (define ms1 (current-milliseconds))
  (sleep 0.25)
  (- ms1 ms0))

(define tests
  `(
    ; ("ec-fast-0"
    ;  release 
    ;  ,(lambda ()
    ;     (define scm (read (open-input-file "tests/release/long.scm" #:mode 'text)))
    ;     (define cps (cps-convert (anf-convert (alphatize (assignment-convert (simplify-ir (desugar scm)))))))
    ;     (define val-0 (eval-ir cps))
    ;     (define p (closure-convert cps))
    ;     (define ll (proc->llvm p))
    ;     (define val-1 (eval-llvm ll))
    ;     (define ms (min (time-llvm-eval ll)
    ;                     (time-llvm-eval ll)
    ;                     (time-llvm-eval ll)
    ;                     (time-llvm-eval ll)))
    ;     (pretty-print `(ec-fast-0-timing ,ms))
    ;     (and (equal? val-0 val-1) (> 260 ms))))
    ; ("ec-fast-1"
    ;  release 
    ;  ,(lambda ()
    ;     (define cps (read (open-input-file "tests/release/loops.cps" #:mode 'text)))
    ;     (define val-0 (eval-ir cps))
    ;     (define p (closure-convert cps))
    ;     (define ll (proc->llvm p))
    ;     (define val-1 (eval-llvm ll))
    ;     (define ms (min (time-llvm-eval ll)
    ;                     (time-llvm-eval ll)
    ;                     (time-llvm-eval ll)
    ;                     (time-llvm-eval ll)))
    ;     (pretty-print `(ec-fast-1-timing ,ms))
    ;     (and (equal? val-0 val-1) (> 260 ms))))
    ; ,@(map (path->test 'public 'clo) (tests-list "final"))
    ,@(map (path->test 'public 'to-llvm) (tests-list "final"))
    ; ,@(map (path->test 'release 'clo) (tests-list "runtime"))
    ,@(map (path->test 'release 'to-llvm) (tests-list "runtime"))  
    ; ,@(map (path->test 'secret 'clo) (tests-list "secret"))
    ,@(map (path->test 'secret 'to-llvm) (tests-list "secret"))))

(define (run-test/internal is-repl . args)
  ;; Run all tests, a specific test, or print the available tests
  (match args
         [(list "all")
          (define correct-count
            (foldl (lambda (testcase count)
                     (match testcase
                            [(list test-name _ exec)
                             (define exec-result
                               (with-handlers ([exn:fail? identity])
                                              (exec)))
                             (if (eq? exec-result #t)
                                 (begin
                                   (display "Test ")
                                   (display test-name)
                                   (display " passed.")
                                   (newline)
                                   (+ count 1))
                                 (begin
                                   (display "Test ")
                                   (display test-name)
                                   (display " failed!")
                                   (newline)
                                   count))]))
                   0
                   tests))
          (display "Score on available tests (may not include release tests or private tests): ")
          (display (/ (round (/ (* 10000 correct-count) (length tests))) 100.0))
          (display "%")
          (newline)]

         [(list "mk-test-props")
          (define groupped-tests
            ;; key: group (symbol)
            ;; value: reversed list of testcases
            (foldl
             (lambda (testcase h)
               (match testcase
                      [(list _ grp _)
                       (define cur-group
                         (hash-ref h grp '()))
                       (hash-set h grp (cons testcase cur-group))]))
             (hash)
             tests))
          (for-each
           displayln
           '("build.language=c"
             "build.make.file=Makefile"
             "test.exec=timeout -s KILL 55s /usr/local/bin/racket ./tests.rkt &"))
          (for-each
           (lambda (kv)
             (match kv
                    [(cons grp ts)
                     (define testnames
                       (reverse (map car ts)))
                     (printf
                      "test.cases.~a=~a~n"
                      grp
                      (string-join
                       testnames
                       ","))]))
           (hash->list
            groupped-tests))]

         [(list test-name)
          #:when (assoc test-name tests)
          (match (assoc test-name tests)
                 [(list _ _ exec)
                  (define exec-result
                    (with-handlers ([exn:fail? identity])
                                   (exec)))
                  (define passed (eq? exec-result #t))
                  (displayln (if passed "Test passed!" "Test failed!"))
                  (unless is-repl
                          (exit (if (eq? exec-result #t) 0 1)))])]
         [else
          (display "Available tests: ")
          (newline)
          (display
           (string-join
            (map car tests)
            ", "))
          (newline)]))

(define run-test
  (curry run-test/internal #t))

(apply
 run-test/internal
 (cons
  #f
    (vector->list (current-command-line-arguments))))


