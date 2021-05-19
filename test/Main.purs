module Test.Main where

import MasonPrelude
import Test.Assert (assert)

import RefEq (RefEq(..), (===))


f :: ∀ a. a -> a
f = identity

main :: Effect Unit
main = do
  assert $ f === f
  assert $ RefEq f == RefEq f
