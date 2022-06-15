# 99 Problems

Solutions to 99 problems initially created for Prolog ([Prolog problems](https://sites.google.com/site/prologsite/prolog-problems)), but since implemented in many other languages, including [Ocaml exercises](https://ocaml.org/problems).
This repo implements solutions (to some problems) by using `Elm`.

## Instructions

`master` branch contains function definitions with type signatures (without implementation) and unit tests.

As you start working on a function, uncomment a test suite in `tests/Tests.elm`. The test should initially fail with "not implemented" message.

You can try your solutions by running test suite in parallel with

```sh
elm-app test --watch
```

If for some reason `elm-app` doesn't properly restart tests after file changes, you can run the following command from root folder:

```sh
npx nodemon --exec "elm-app test || exit 1" -w src/ -w tests/ -e elm
```

`solutions` branch contains solutions to problems, if you want to take a peek.
