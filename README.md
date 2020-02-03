This is a starting point for Python solutions to the CodeCrafters
Redis Challenge.

In this challenge, you'll build a toy Redis clone that's capable of handling
basic commands like `PING`, `SET` and `GET`. Along the way we'll learn about
event loops, the Redis protocol and more. 

**Note**: If you're viewing this repo on GitHub, head over to
[codecrafters.io](https://codecrafters.io) to start the challenge.

# Usage

1. Ensure you have `python (3.8)` installed locally
1. Run `make run_local_server` to run your Redis server, which is implemented in
   `app/main.py`.
1. Commit your changes and run `git push origin master` to submit your solution
   to CodeCrafters. Test output will be streamed to your terminal.
1. Once you pass a stage, increment the `current_stage` value in
   `.codecrafters.yml`, and run `git push origin master` to advance to the next
   stage.
   

# Local tests

1. Run `make test` to run local tests, which are located in `tests/test_main.py`


# Passing the first stage

CodeCrafters runs tests when you do a `git push`. Make an empty commit and push
your solution to see the first stage fail.
   
``` sh
git commit --allow-empty -m "Running tests"
git push origin master
```

You should see a failure message that says it wasn't able to connect to port
`6379`.

Go to `app/main.py` and uncomment the server implementation. Commit and
push your changes, and you'll now see the first stage pass.

Time to move on to the next stage! Bump the `current_stage` value in
`.codecrafters.yml` and run `git push origin master` again.



# Troubleshooting

### `make install` can't find Python 3.8, although I have it installed

When running `make install`, you might be prompted with something like this: 

```
Warning: Python 3.8 was not found on your system…
You can specify specific versions of Python with:
  $ pipenv --python path/to/python
```

This is because `pipenv` expects your default `python` executable's version to
be 3.8. If you've installed 3.8 elsewhere, use `pipenv --python
<path/to/your/python38> install`. For example, if you have Python 3.8
installed at `/usr/bin/python38`, then run the following: 

``` sh
pipenv --python /usr/bin/python38 install
```

