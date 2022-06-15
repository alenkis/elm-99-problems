module Tests exposing (..)

import Expect
import Lists
import Test exposing (..)



-- Check out https://package.elm-lang.org/packages/elm-explorations/test/latest to learn more about testing in Elm!


all : Test
all =
    describe "List tests"
        [ describe "Lists.last"
            [ test "returns correct value for non empty list" <|
                \_ -> Expect.equal (Just 5) (Lists.last [ 1, 2, 3, 4, 5 ])
            , test "return nothing for empty list" <|
                \_ -> Expect.equal Nothing (Lists.last [])
            ]

        -- , describe "Lists.lastTwo"
        --     [ test "returns Just value when list has more than 2 elements" <|
        --         \_ -> Expect.equal (Just ( 4, 5 )) (Lists.lastTwo [ 1, 2, 3, 4, 5 ])
        --     , test "returns Nothing when list has less than 2 elements" <|
        --         \_ -> Expect.equal Nothing (Lists.lastTwo [ 1 ])
        --     , test "returns Nothing for empty list" <|
        --         \_ -> Expect.equal Nothing (Lists.lastTwo [])
        --     ]
        -- , describe "Lists.duplicate"
        --     [ test "returns an empty list if given empty list" <|
        --         \_ -> Expect.equal [] (Lists.duplicate [])
        --     , test "returns a duplicated list of integers" <|
        --         \_ -> Expect.equal [ 1, 1, 2, 2, 3, 3 ] (Lists.duplicate [ 1, 2, 3 ])
        --     , test "returns a duplicated list of strings" <|
        --         \_ -> Expect.equal [ "a", "a", "b", "b" ] (Lists.duplicate [ "a", "b" ])
        --     ]
        ]
