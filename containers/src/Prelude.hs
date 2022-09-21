{-# LANGUAGE CPP #-}
{-# LANGUAGE PackageImports #-}
-- | This hideous module lets us avoid dealing with the fact that
-- @liftA2@, @foldl'@ and @foldMap'@ were not previously exported
-- from the standard prelude.
module Prelude
  ( module Prel
  , Applicative (..)
#if !MIN_VERSION_base(4,10,0)
  , liftA2
#endif
  , Foldable (..)
#if !MIN_VERSION_base(4,13,0)
  , foldMap'
#endif
  )
  where

import "base" Prelude as Prel hiding (Applicative(..), Foldable(..))
import Control.Applicative(Applicative(..))
import Data.Foldable ( Foldable(elem, foldMap, foldr, foldl, foldl', foldr1
                     , foldl1, length, minimum, null, product, sum ))

#if !MIN_VERSION_base(4,10,0)
import Control.Applicative(liftA2)
#endif

#if !MIN_VERSION_base(4,13,0)
import Data.Foldable(foldMap')
#endif
