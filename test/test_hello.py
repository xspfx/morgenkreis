import unittest
from unittest import TestCase

from src.hello import hello_world


class TestMain(TestCase):
    def test_hello_world(self):
        self.assertEqual(hello_world("World"), "Hello, World!")


if __name__ == "__main__":
    unittest.main()
