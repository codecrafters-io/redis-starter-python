import socket
from contextlib import contextmanager
import threading

from app.main import main
import time


def test_can_connect_to_6379():
    with spawn_server():
        # Shouldn't throw an error
        socket.create_connection(("localhost", 6379))


@contextmanager
def spawn_server():
    th = threading.Thread(target=main, name="test-server", daemon=True)
    th.start()
    time.sleep(0.1)
    yield
