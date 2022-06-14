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
