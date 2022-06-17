module Lists exposing (..)


last : List a -> Maybe a
last l =
    -- Write a function that returns the last element of a list
    l |> List.reverse |> List.head


lastTwo : List a -> Maybe ( a, a )
lastTwo l =
    -- Find the last but one (last and penultimate) elements of a list.
    case l of
        [] ->
            Nothing

        [ _ ] ->
            Nothing

        [ x, y ] ->
            Just ( x, y )

        _ :: xs ->
            lastTwo xs


duplicate : List a -> List a
duplicate l =
    -- Duplicate the elements of a list.
    -- e.g. [1,2,3] -> [1,1,2,2,3,3]
    case l of
        [] ->
            []

        x :: xs ->
            x :: x :: duplicate xs


isPalindrome : List a -> Bool
isPalindrome l =
    -- Find out whether a list is a palindrome.
    -- HINT: a palindrome is its own reverse.
    l == List.reverse l


compress : List a -> List a
compress l =
    -- Eliminate consecutive duplicates of list elements.
    -- e.g. [1,1,1,2,2,3,1,1] -> [1,2,3,1]
    case l of
        [] ->
            []

        [ x ] ->
            [ x ]

        x :: ((y :: _) as tail) ->
            if x == y then
                compress tail

            else
                x :: compress tail


runLengthEncode : List a -> List ( Int, a )
runLengthEncode l =
    -- https://en.wikipedia.org/wiki/Run-length_encoding
    -- "pack" consecutive elements into tuples that contain the
    -- number of ocurrences and the value itself
    -- e.g. ["a", "a", "b"] -> [(2, "a"), (1, "b")]
    case l of
        [] ->
            []

        [ x ] ->
            [ ( 1, x ) ]

        x :: xs ->
            case runLengthEncode xs of
                [] ->
                    []

                ( n, y ) :: ys ->
                    if x == y then
                        ( n + 1, x ) :: ys

                    else
                        ( 1, x ) :: ( n, y ) :: ys


dropNth : List a -> Int -> List a
dropNth l =
    -- Drop every N'th element from a list.
    -- e.g. ["a", "b", "c", "d", "e"] 2 -> ["a", "c", "e"]
    Debug.todo "not implemented"
