module RefEq where

import Prelude

data RefEq a = RefEq a

foreign import refEq :: ∀ a b. a -> b -> Boolean

infix 4 refEq as ===

instance eqRefEq :: Eq (RefEq a) where
  eq (RefEq a) (RefEq b) = a === b
