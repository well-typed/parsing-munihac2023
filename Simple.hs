{-# OPTIONS_GHC -Wall #-}
module Simple where

import Control.Monad
-- import Control.Applicative

class MonadPlus m => MonadParser m where
  eof :: m ()
  token :: (Char -> Maybe a) -> m a

newtype Parser a =
  MkParser { runParser :: String -> [(a, String)] }

-- succeed :: a -> Parser a
-- succeed x =
--   MkParser (\ input -> [(x, input)])
--
--alt :: Parser a -> Parser a -> Parser a
--alt p1 p2 =
--  MkParser $ \ input ->
--    runParser p1 input ++ runParser p2 input
--
--bind :: Parser a -> (a -> Parser b) -> Parser b
--bind p1 k =
--  MkParser $ \ input ->
--    [ (r2, rest)
--    | (r1, input') <- runParser p1 input
--    , (r2, rest)   <- runParser (k r1) input'
--    ]
--
--instance Monad Parser where
--  (>>=) = bind
--
--instance Applicative Parser where
--  pure = succeed
--  (<*>) = ap
--
--instance Functor Parser where
--  fmap = liftM
--
--instance Alternative Parser where
--  empty = MkParser (const [])
--  (<|>) = alt
--
--instance MonadPlus Parser
--
--instance MonadParser Parser where
--  eof = MkParser $ \ input ->
--    case input of
--      [] -> [((), [])]
--      (_ : _) -> []
--
--  token p = MkParser $ \ input ->
--    case input of
--      [] -> []
--      (x : xs) ->
--        case p x of
--          Nothing -> []
--          Just r  -> [(r, xs)]
--
--char :: Char -> Parser Char
--char c =
--  token (\ c' -> if c == c' then Just c' else Nothing)
