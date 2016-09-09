module CoinChanger exposing (..)

import List exposing (head, tail)
import String


getChange amount =
  change amount [25,10,5,1]

change amount coins =
  case coins of
    [] ->
      []
    val::vals ->
      if amount >= val then
        val :: change (amount - val) coins
      else
        change amount vals
