Welcome to the CodeCrafters Redis Challenge!

In this challenge, you'll build a toy Redis clone that's capable of handling
basic commands like `PING`, `SET` and `GET`. Along the way we'll learn about
event loops, the Redis protocol and more. 

**Note**: If you're viewing this repo on GitHub, head over to
[codecrafters.io](https://codecrafters.io) to start the challenge.

# Usage

1. Ensure you have `python` (3.8) installed locally. 
2. Run `make install`, which'll install the required Python dependencies.
3. We've built a basic local testing setup for you at `tests/test_main.py`. To
   run these tests, run `make test`.
   
   You should see a failure message that looks like this: 
   
```sh
================================================================================================================== FAILURES ===================================================================================================================
__________________________________________________________________________________________________________ test_can_connect_to_6379 ___________________________________________________________________________________________________________

    def test_can_connect_to_6379():
        with spawn_server():
            # Shouldn't throw an error
>           socket.create_connection(("localhost", 6379))

    ...
    ...
    ...

>               sock.connect(sa)
E               ConnectionRefusedError: [Errno 111] Connection refused

/usr/lib64/python3.8/socket.py:796: ConnectionRefusedError
```
   
 4. Now, implement a socket in `app/main.py`
 
```diff
diff --git a/app/main.py b/app/main.py
index fdfa4b3..31bbf15 100644
--- a/app/main.py
+++ b/app/main.py
@@ -1,2 +1,14 @@
-# Implement your server here
-print("hey")
\ No newline at end of file
+import socket
+import time
+
+
+def main():
+    # Implement your server here
+    print("hey")
+
+    s = socket.create_server(("localhost", 6379))
+    s.accept()  # Wait for a new connection
+
+
+if __name__ == "__main__":
+    main()
```
   
   

# Submitting your first stage solution

# Troubleshooting

1. `make install` says it can't find Python 3.8, although I have it installed

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

**Steps to get started**:

- Ensure you have `python` installed locally
- Clone this repository

**Workflow**:

- Run `make download_tester_mac` (or `download_tester_linux`, if you're running
  linux)
- Run `make test`. You should see a failure message at this point.
- Implement the required feature in `app/main.py`, iterate
  until `make test` passes. (If you want more verbose output for errors, use
`make test_debug` instead of `make test`)
- Bump `current_stage` in your Makefile to go to the next stage!

**Leaderboard**:

If you'd like to be included in [the
leaderboard](https://jayantbh.github.io/redis-challenge-leaderboard-ui/):

- Ask Paul for an API key
- Ensure your API key is available as `$REDIS_CHALLENGE_API_KEY` (env var)
- After completing a stage, run `make test_and_report` to update your
  leaderboard state
