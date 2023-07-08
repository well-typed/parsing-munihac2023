module Parsing where

-- https://github.com/well-typed/parsing-munihac2023

-- import Control.Monad
-- import Data.Char
-- import Data.List
-- import qualified Data.List.NonEmpty as NonEmpty
-- import qualified Data.Set as Set
-- import Data.Void
-- import Text.Megaparsec
-- import Text.Megaparsec.Char as Char
-- import Text.Megaparsec.Char.Lexer as Lexer

-- What do parser combinators / parsers do?
--
-- 1. decide whether an input belongs to the desired language
-- 2. in the case of success, produce some kind of witness (usually an abstract syntax tree)
-- 3. in the case of failure, produce an error message
--

-- Simple parsing with Megaparsec (in GHCi):
--
-- string, char
-- sequencing with (<*>)
-- choice with (<|>)
-- forcing the end of input with eof
-- ...
--

-- -----------------------------------------------------------------------
-- Example 1: moves on the chess board
--
-- (actual chess formats such as SAN, FEN or PGN are good exercises,
-- but somewhat more complicated)
--
-- Look at inputs/chess*.txt
--
-- Derive a grammar.
-- Transcribe the grammar.
--

-- -----------------------------------------------------------------------
-- Example 2: trees
--
-- Look at inputs/tree*.txt
--
-- Derive a grammar.
-- Transcribe the grammar.
--

-- Simple parser combinators.

-- Discuss pitfalls:
--
-- - Ambiguity
-- - Looping
-- - Left factoring / backtracking
-- - Left recursion

-- -----------------------------------------------------------------------
-- Example 3: differences
--
-- Look at inputs/differences*.txt
--
-- Derive a grammar.
-- Expression parsers.

-- -----------------------------------------------------------------------
-- Example 4: a simple programming language
-- (from https://uu-afp.github.io/assignments.pdf)
--
-- Look at inputs/arrow*.txt
--
-- program ::= rule∗
-- rule    ::= ident "->" cmds "."
-- cmds    ::= ε | cmd ("," cmd)*
-- cmd     ::= "go" | "take" | "mark" | "nothing"
--           | "turn" dir
--           | "case" dir "of" alts "end"
--           | ident
-- dir     ::= "left" | "right" | "front"
-- alts    ::= ε | alt (";" alt)*
-- alt     ::= pat "->" cmds
-- pat     ::= "Empty" | "Lambda" | "Debris" | "Asteroid" | "Boundary" | "_"
--
-- Whitespace / lexing.

-- -----------------------------------------------------------------------
-- Interesting links:
--
-- Megaparsec tutorial:
-- https://markkarpov.com/tutorial/megaparsec.html
--
-- Other interesting parser combinator libraries:
--
-- - Early
-- - fungll-combinators
-- - flatparse
-- - uu-parsinglib
-- - ...
--
-- Lots of background on grammars and parsing:
-- http://www.cs.uu.nl/docs/vakken/b3tc/downloads-2018/lecture-notes.pdf
--
-- Inspiration for simple parsing exercises:
--
-- - Advent of Code
-- - chess formats (see above; SAN, FEN, PGN)
-- - output of various Linux commands
-- - design your own DSL
