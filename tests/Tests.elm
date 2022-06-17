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
        -- , describe "Lists.isPalindrome"
        --     [ test "returns true for empty list" <|
        --         \_ -> Expect.equal True (Lists.isPalindrome [])
        --     , test "returns true for palindrome list of Int" <|
        --         \_ -> Expect.equal True (Lists.isPalindrome [ 1, 2, 3, 2, 1 ])
        --     , test "returns true for palindrome list of Char" <|
        --         \_ -> Expect.equal True (Lists.isPalindrome [ 'a', 'b', 'c', 'b', 'a' ])
        --     , test "returns false for non palindrome list of Int" <|
        --         \_ -> Expect.equal False (Lists.isPalindrome [ 1, 2, 3 ])
        --     , test "returns false for non palindrome list of Char" <|
        --         \_ -> Expect.equal False (Lists.isPalindrome [ 'a', 'b' ])
        --     ]
        -- , describe "Lists.compress"
        --     [ test "compresses list when given a list with consecutive duplicates" <|
        --         \_ -> Expect.equal [ 1, 2, 3, 1 ] (Lists.compress [ 1, 1, 1, 2, 2, 3, 1, 1 ])
        --     , test "returns unchanged list when there are no consecutive duplicates" <|
        --         \_ -> Expect.equal [ 1, 2, 3 ] (Lists.compress [ 1, 2, 3 ])
        --     ]
        -- , describe "Lists.runLengthEncode"
        --     [ test "Int: encodes list with consecutive duplicates correctly" <|
        --         \_ -> Expect.equal [ ( 4, 1 ), ( 3, 2 ), ( 1, 5 ) ] (Lists.runLengthEncode [ 1, 1, 1, 1, 2, 2, 2, 5 ])
        --     , test "String: encodes list with consecutive duplicates correctly" <|
        --         \_ -> Expect.equal [ ( 3, "a" ), ( 2, "b" ), ( 4, "c" ) ] (Lists.runLengthEncode [ "a", "a", "a", "b", "b", "c", "c", "c", "c" ])
        --     , test "returns empty list if given an empty list" <|
        --         \_ -> Expect.equal [] (Lists.runLengthEncode [])
        --     ]
        -- , describe "Lists.dropNth"
        --     [ test "correctly drops every nth element" <|
        --         \_ -> Expect.equal [ "a", "c", "e", "g" ] (Lists.dropNth [ "a", "b", "c", "d", "e", "f", "g" ] 2)
        --     , test "doesn't drop anything if given number is greater than list length" <|
        --         \_ -> Expect.equal [ "a", "b" ] (Lists.dropNth [ "a", "b" ] 3)
        --     ]
        ]
