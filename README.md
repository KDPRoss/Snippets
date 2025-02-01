## Introduction

This repository contains assorted demonstration code in my
‘flagship’ programming languages—Motmot and Tanager.

Because many people are unaware, both languages are named
for neoTropical songbirds: This is a turquoise-browed motmot
(_Eumomota superciliosa_):

![A pretty motmot.](./images/motmot.jpg)

… and this is a green-headed tanager (_Tangara seledon_):

![A pretty tanager.](./images/tanager.jpg)

Motmot began in 2015, although its implementation started
much later; Tanager has been under development, in one form
or another, since 2009 and is currently in maintenance mode.
Both are functional languages drawing inspiration,
variously, from Haskell, Miranda, Hope, F#, Scala, (my
language) Sisserou, and Wolfram, inter alia. Both languages'
implementations are proprietary and are not available for
anyone's use other than mine. (Well, this is no longer quite
true: MotmotLite is available [in this
repository](https://github.com/KDPRoss/MotmotLite).)

### Endorsements

I taught ChatGPT how to Motmot, and here's how it reviews
the language:

> Motmot has a well-designed set of datatypes that cover the
> necessary breadth for a general-purpose programming
> language … The pattern matching system in Motmot is
> comprehensive and expressive, featuring a blend of elements
> seen in other pattern-matching languages [but] with some
> unique features … [making it] a powerful language for data
> manipulation and control flow, able to express complex logic
> in a concise and clear way. Overall, the use of patterns and
> explicit type abstraction in Motmot's function definitions
> and applications provide a high degree of expressiveness and
> type safety.

And, here's how I'd review its review:

> ChatGPT is a bit over-complimentary (If I ever need a
> marketing department for Motmot, ChatGPT is hired!) and used
> the word ‘expressive’ twice, but its summary of the
> language's features / character is quite accurate … I
> suspect that ChatGPT is, in all the universe, the
> information-processing system with the second-best
> understanding of / second-most experience with Motmot.

## Motmot Highlights

![Melanie the Motmot motmot.](./images/melanie.jpg)

Motmot is proudly represented by Melanie, the language's friendly low-poly mascot.

* [Text Processing Demonstration](text-processing/README.md):
  Demonstration of Motmot's text-processing library.
* [Testing in Motmot](TestingInMotmot.ipynb): Illustration of
  two styles of test cases in Motmot: Hand-written cases and
  [QuickCheck](https://en.wikipedia.org/wiki/QuickCheck)
  properties.
* [TimeLimited.mot](TimeLimited.mot): An exploration of
  monadic time-limited computation.
* [ParserCombinators.mot](ParserCombinators.mot):
  ‘Motmot-A’-syntax (This is a simple, one-dimensional
  syntax, like that found in most programming languages.) of
  Graham Hutton's seminal parser-combinator paper, along with
  some comments comparing the Miranda implementation from that
  paper.
* [TypeClasses.mot](TypeClasses.mot): Encoding of type
  classes in Motmot with some simple examples.
* [PolymorphicRecursion.f.mot](PolymorphicRecursion.f.mot):
  Examples of polymorphic recursion based on Hallett and
  Kfoury's paper on the topic.
* [SieveOfEratosthenes.mot](SieveOfEratosthenes.mot): Generate
  primes; based on some more code by Hutton, demonstrating
  ‘Why Functional Programming Matters’-style manipulation
  of (potentially-)infinite data structures.

## Tanager Highlights

* [Factorial.t5](Factorial.t5): Numerous factorial
  implementations, demonstrating the language's syntactic
  versatility, ranging from a mutable-reference-based version,
  to a point-free one, to Peano arithmetic, along with some
  tests.
* [FizzBuzz.t5](FizzBuzz.t5): A few implementations of the
  fizz–buzz problem, demonstrating: Predicate patterns,
  `cases` discrimination, absurd patterns, list ranges, tuple
  catamorphisms, expression infixation, and generative tuple
  projection.
* [Mandelbrot.t5](Mandelbrot.t5): Simple text renderer of the
  Mandelbrot Set, demonstrating: Records and recursive λs.
* [Sudoku.t5](Sudoku.t5): A nondeterminism-monad-based (i.e.,
  backtracking) Sudoku solver, demonstrating: Algebraic data
  types, list comprehensions, pipeline composition, and mixfix
  syntax.

## The Rosetta Stone

If you have a wide monitor (or are unafraid of tiny text),
have a look at [The Rosetta Stone](RosettaStone.txt) …
Rather than a tedious proclamation about tax exemptions for
priests, it's matched Tanager, Motmot-D, and Motmot-F code
implementing a classic parser-combinator library, along with
commentary.

This is generated (from the Tanager-5, Motmot-D, and
Motmot-F code files) by some custom Motmot code, using the
‘Data.Table.Boxy’ cell-compositor library.
