"""docstring"""

import base64

from robot.api.deco import keyword


@keyword("Encode as Base64")
def encode_as_base64(string):
    """
    Encode string as base64.
    """
    return base64.b64encode(string.encode())


@keyword("Decode from Base64")
def decode_from_base64(string):
    """
    Decode string from base64.
    """
    return base64.b64decode(string).decode()


@keyword("Hello World Version Number Two")
def hello_world(name: str) -> None:
    """prints simple Hello World with parameter"""
    print(f"Hello Robot World, {name}")
