#lang scribble/manual
 
@title{Final Project Documentation}

High-Level Description and Documentation for Final Compilers Project
 
I, Sahil Mariwala, pledge on my honor that I have not given or
received any unauthorized assistance on this assignment.
 
@section{Documenting Primitive Functions}

@code[#:lang "at-exp racket"]|{(= a b ...)}| → int

Returns true if all arguments are equal.

@code[#:lang "at-exp racket"]|{(> a b)}| → int

Returns true if a is greater than b.


@code[#:lang "at-exp racket"]|{(< a b)}| → bool

Returns true if a is less than b.

@code[#:lang "at-exp racket"]|{(<= a b)}| → bool

Returns true if a is less than or equal to b.


@code[#:lang "at-exp racket"]|{(>= a b)}| → bool

Returns true if a is greater than b.


@code[#:lang "at-exp racket"]|{(+ a b ...)}| → int

Returns the sum of all arguments.

@code[#:lang "at-exp racket"]|{(- a b)}| → int

Returns result of subtracting b from a.


@code[#:lang "at-exp racket"]|{(* a b ...)}| → int

Returns product of all numbers.


@code[#:lang "at-exp racket"]|{(/ a b)}| → int

Divides first integer by second. Raises Divide by Zero error if second argument is 0.


@code[#:lang "at-exp racket"]|{(null? a)}| → bool

Returns true if a is empty.

@code[#:lang "at-exp racket"]|{(cons a b)}| → pair

Returns a new pair where the first element is a and the second element is b.


@code[#:lang "at-exp racket"]|{(car a)}| → any

Returns the first element of the pair.


@code[#:lang "at-exp racket"]|{(cdr a)}|  → any

Returns the second element of the pair p.


@code[#:lang "at-exp racket"]|{(list a)}| → list

Returns a list with the a as an element in the list.


@code[#:lang "at-exp racket"]|{(length lst)}| → int

Returns the number of elements in the list provided.


@code[#:lang "at-exp racket"]|{(list-tail lst a)}| → list

Returns the list after the first a elements of lst.


@code[#:lang "at-exp racket"]|{(member a lst)}| → list/#f

Checks if a is an element of lst and then returns the tail of the list from a or false if not found.


@code[#:lang "at-exp racket"]|{(memv v lst)}| → list/#f

Checks if a is an element of lst and then returns the tail of the list from a or false if not found using eqv? instead of equals?.


@code[#:lang "at-exp racket"]|{(map proc lst)}| → list

Applies proc to all of the elements of lst. The result is a list with the result of proc applied to each element.


@code[#:lang "at-exp racket"]|{(append lst ...)}| → list

Compiles all elements in all lists supplied in order.


@code[#:lang "at-exp racket"]|{(foldl proc a l ...+)}| → list

foldl applies proc to each element in the list from left to right while containing an accumulator with behavior specified by proc.


@code[#:lang "at-exp racket"]|{(foldr pro a l ...+)}| → list

foldl applies proc to each element in the list from right to left while containing an accumulator with behavior specified by proc.


@code[#:lang "at-exp racket"]|{(vector? a)}| → bool

Returns true if a is a vector.


@code[#:lang "at-exp racket"]|{(vector v)}| → vector

Returns a mutable vector v.


@code[#:lang "at-exp racket"]|{(make-vector size [v])}| → vector

Returns a mutable vector with size slots initialized to v. 


@code[#:lang "at-exp racket"]|{(vector-ref v pos)}| → any

Returns the element at index pos from v.


@code[#:lang "at-exp racket"]|{(vector-set! v pos a)}| → #<void>

Sets the element at index pos of vector v to a.


@code[#:lang "at-exp racket"]|{(vector-length v)}| → int

Returns the length of the vector.


@code[#:lang "at-exp racket"]|{(set v ...)}| → set

Creates a set with elements given.


@code[#:lang "at-exp racket"]|{(set->list s)}| → list

Returns a list with the elements from set s.


@code[#:lang "at-exp racket"]|{(list->set lst)}| → set

Creates a set with the elements of lst. 


@code[#:lang "at-exp racket"]|{(list? lst)}| → bool

Returns whether lst is a list, pair with list as the subsequent element or an empty list.


@code[#:lang "at-exp racket"]|{(void? v)}| → bool

Returns true if v is constant #<void>.


@code[#:lang "at-exp racket"]|{(promise? p)}| → bool

Returns true if p is a promise.


@code[#:lang "at-exp racket"]|{(number? n)}| → bool

Returns true if n is a number.


@code[#:lang "at-exp racket"]|{(integer? n)}| → bool

Returns true if n is an integer.


@code[#:lang "at-exp racket"]|{(error s)}| → any

Raises an exception that returns a string "error: " with s appended to it.


@code[#:lang "at-exp racket"]|{(void v ...)}| → #<void>

Returns the constant #<void> with all arguments ignored.

@code[#:lang "at-exp racket"]|{(print p)}| → #<void>

Prints p.


@code[#:lang "at-exp racket"]|{(display d)}| → #<void>

Displays datum d.


@code[#:lang "at-exp racket"]|{(exit e)}| → any

passes e to exit handler or returns #<void> if e is not present.

 
@section{Top-level overview of compiler}
 
Scheme input is wrapped in a @code[#:lang "at-exp racket"]|{begin}| and passes through @code[#:lang "at-exp racket"]|{top-level}| from assignment 5.

After passing through @code[#:lang "at-exp racket"]|{top-level}|, all datums become explicitly quoted, @code[#:lang "at-exp racket"]|{defines}| are desugared into @code[#:lang "at-exp racket"]|{letrec*}|, and new bindings are generated for expressions that contain @code[#:lang "at-exp racket"]|{quasiquotes}|, @code[#:lang "at-exp racket"]|{unquotes}|, and @code[#:lang "at-exp racket"]|{match}|. 

The @code[#:lang "at-exp racket"]|{top-level}| output is then passed through @code[#:lang "at-exp racket"]|{desugar}| from assignment 2 which converts the input into a small core language including only let forms, lambdas, conditionals, set!, call/cc, and explicit primitive-operation forms. 

The resulting output is fed to @code[#:lang "at-exp racket"]|{assignment-convert}| and @code[#:lang "at-exp racket"]|{alphatize}| which replaces @code[#:lang "at-exp racket"]|{set!}| with @code[#:lang "at-exp racket"]|{make-vector}|, @code[#:lang "at-exp racket"]|{vector-set!}|, and @code[#:lang "at-exp racket"]|{vector-ref}| prims.

The grammar is then partitioned by into complex expressions and atomic expressions that are able to be immediately evaluated by ANF conversion. 

CPS conversion follows and the current continuation is invoked at return points instead of allowing function calls to return. As a result, @code[#:lang "at-exp racket"]|{call/cc}| is removed and @code[#:lang "at-exp racket"]|{prims}| and @code[#:lang "at-exp racket"]|{apply-prims}| are now let-bound. 

@code[#:lang "at-exp racket"]|{closure-convert}| conducts 2 passes on the output to lift the remaining variable references to let-bindings and turns fixed-arity functions into unary functions that take an argument list. One more pass transforms the language into a list of first-order procedures. 

Finally, the grammar is turned into a string encoding LLVM IR. The header.cpp file is also transformed into LLVM IR and both are concatenated in a file combined.ll which is compiled with @code[#:lang "at-exp racket"]|{clang++}| to produce a valid binary.


@section{Run-time Errors}

The tests.rkt have been modified so error messages from the binary are returned. This is how I created tests that fail for certain runtime errors. 

Integer Overflow for Addition, Multiplication, and Subtraction

Run integer_overflow_1 and integer_overflow_2. Header.cpp is modified such that the prim functions for +, - and * detect
an integer overflow and print "Integer Overflow Error" before halting.

Integer Underflow for Addition, Multiplication, and Subtraction

Run integer_underflow_1 and integer_underflow_2. Header.cpp is modified such that the prim functions for +, - and * detect
an integer overflow and print "Integer Overflow Error" before halting.

Division by Zero

Run divide_zero_1 and divide_zero_2. Header.cpp is modified such that the prim functions for / checks whether the second
argument is 0. If so, it prints "Divide By Zero Error" before halting.








