import pytest
from app.main import say_hello
from app.utils import add

def test_say_hello():
    assert say_hello("World") == "Hello, World!"

def test_add():
    assert add(2, 3) == 5
