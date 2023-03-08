# Programming Language Fundamentals

These notes and accompanying OCaml source code take a hands-on
approach in introducing fundamental programming language concepts. 

You will need to install:
* opam: the package manager for OCaml. Follow instructions here: https://opam.ocaml.org/doc/Install.html
* ocaml: the language we use as host for implementing our interpreters. Follow the instructions here: https://ocaml.org/docs/install.html
* menhir: the lexer and parser generator.  Just type `opam install menhir`
* ounit: the unit testing library. Just type `opam install ounit2`
* dune: the standard build system for OCaml. Just type `opam install dune`

## Building and Running the Interpreters

This is a two step process. First you build and install the parser, then you build and run the interpreters.

### Building and Installing the Parser

In the folder src/parser_plaf, type the following

<pre><code>    # dune build
    # dune install
</code></pre>


### Building and Running the Interpreters

In the folder src/let/lib, type the following 

<pre><code>    # dune utop
</code></pre>


## Upgrading dune/menhir

If you get error "Error: Unbound module MenhirLib.LexerUtil", try `opam upgrade menhir`

If you get "Error: Version 3.2 of dune is not supported.", try `opam upgrade dune`
