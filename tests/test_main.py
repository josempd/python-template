import pytest

from src.main import greet


def test_greet_default() -> None:
    """Test the default behavior of the greet function."""
    assert greet() == "Hello, World!"


def test_greet_custom_name() -> None:
    """Test the greet function with a custom name."""
    assert greet("Alice") == "Hello, Alice!"


def test_greet_empty_string() -> None:
    """Test the greet function with an empty string."""
    assert greet("") == "Hello, !"


@pytest.mark.parametrize(
    "name, expected",
    [
        ("Bob", "Hello, Bob!"),
        ("Python", "Hello, Python!"),
        ("OpenAI", "Hello, OpenAI!"),
    ],
)
def test_greet_parametrized(name: str, expected: str) -> None:
    """Parametrized test for the greet function with various inputs.

    Args:
    ----
        name: The input name for the greet function.
        expected: The expected output from the greet function.
    """
    assert greet(name) == expected
