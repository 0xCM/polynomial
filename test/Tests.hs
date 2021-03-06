#!/usr/bin/env runhaskell
module Main where

import Test.Framework (defaultMain, testGroup)

import Tests.Core
import Tests.Bernstein
import Tests.Chebyshev
import Tests.Hermite

main = defaultMain 
    [ testGroup "Math.Polynomial"           coreTests
    , testGroup "Math.Polynomial.Bernstein" bernsteinTests
    , testGroup "Math.Polynomial.Chebyshev" chebyshevTests
    , testGroup "Math.Polynomial.Hermite"   hermiteTests
    ]