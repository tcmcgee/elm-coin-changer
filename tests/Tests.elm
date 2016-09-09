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
        , test "0 returns an empty list" <|
          \() ->
              Expect.equal [] (CoinChanger.getChange 0)
        , test ".01 returns a list with a penny" <|
           \() ->
             Expect.equal [1] (CoinChanger.getChange 1)
        , test ".02 returns a list with two pennies" <|
           \() ->
             Expect.equal [1,1] (CoinChanger.getChange 2)
        , test ".03 returns a list with three pennies" <|
           \() ->
             Expect.equal [1,1,1] (CoinChanger.getChange 3)
        , test ".04 returns a list with four pennies" <|
           \() ->
             Expect.equal  [1,1,1,1] (CoinChanger.getChange 4)
        , test ".05 returns a list with a nickel" <|
           \() ->
             Expect.equal [5] (CoinChanger.getChange 5)
        , test "6 returns a list with a nickle and a dime" <|
           \() ->
             Expect.equal [5, 1] (CoinChanger.getChange 6)
        , test "10 returns a dime" <|
           \() ->
             Expect.equal [10] (CoinChanger.getChange 10)
        , test "15 returns a nickle and a dime" <|
           \() ->
             Expect.equal [10, 5] (CoinChanger.getChange 15)
        , test "25 returns a quarter" <|
           \() ->
             Expect.equal [25] (CoinChanger.getChange 25)
        , test "30 returns a quarter and a nickle" <|
           \() ->
             Expect.equal [25,5] (CoinChanger.getChange 30)
        , test "31 returns a quarter,nickle and a penny" <|
           \() ->
             Expect.equal [25,5,1] (CoinChanger.getChange 31)
        ]
