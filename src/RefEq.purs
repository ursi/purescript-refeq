module RefEq where

import Prelude

-- | The purpose of this data type is to give an `Eq` instance to anything via referential equality.
data RefEq a = RefEq a

-- | Referential equality
foreign import refEq :: ∀ a b. a -> b -> Boolean

infix 4 refEq as ===

instance eqRefEq :: Eq (RefEq a) where
  eq (RefEq a) (RefEq b) = a === b
