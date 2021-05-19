module Test.Main where

import MasonPrelude
import Test.Assert (assert, assertFalse)

import RefEq (RefEq(..), (===))


f :: ∀ a. a -> a
f = identity

g :: ∀ a. a -> a
g = \a -> a

main :: Effect Unit
main = do
  assert $ f === f
  assert $ RefEq f == RefEq f
  assertFalse $ f === g
  assertFalse $ RefEq f == RefEq g
