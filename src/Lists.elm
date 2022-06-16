module Lists exposing (..)


last : List a -> Maybe a
last l =
    -- Write a function that returns the last element of a list
    Debug.todo "not implemented"


lastTwo : List a -> Maybe ( a, a )
lastTwo l =
    -- Find the last but one (last and penultimate) elements of a list.
    Debug.todo "not implemented"


duplicate : List a -> List a
duplicate l =
    -- Duplicate the elements of a list.
    -- e.g. [1,2,3] -> [1,1,2,2,3,3]
    Debug.todo "not implemented"


isPalindrome : List a -> Bool
isPalindrome l =
    -- Find out whether a list is a palindrome.
    -- HINT: a palindrome is its own reverse.
    Debug.todo "not implemented"


compress : List a -> List a
compress l =
    -- Eliminate consecutive duplicates of list elements.
    -- e.g. [1,1,1,2,2,3,1,1] -> [1,2,3,1]
    Debug.todo "not implemented"


runLenghtEncoding : List a -> List ( Int, a )
runLenghtEncoding l =
    -- https://en.wikipedia.org/wiki/Run-length_encoding
    -- "pack" consecutive elements into tuples that contain the
    -- number of ocurrences and the value itself
    -- e.g. ["a", "a", "b"] -> [(2, "a"), (1, "b")]
    Debug.todo "not implemented"


dropNth : List a -> Int -> List a
dropNth l =
    -- Drop every N'th element from a list.
    -- e.g. ["a", "b", "c", "d", "e"] 2 -> ["a", "c", "e"]
    Debug.todo "not implemented"
