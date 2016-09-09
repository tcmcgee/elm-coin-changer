module Tests exposing (..)

import Test exposing (..)
import Expect
import CoinChanger exposing (..)
import String


all : Test
all =
    describe "A Test Suite"
        [ test "Addition" <|
            \() ->
                Expect.equal (3 + 7) 10
        , test "String.left" <|
            \() ->
                Expect.equal "a" (String.left 1 "abcdefg")
        , test "CoinChanger of Nothing returns an empty list" <|
          \() ->
              Expect.equal {} (CoinChanger.coinChanger 0)
        ]
