def greet(name: str = "World") -> str:
    """Generate a greeting message.

    Args:
    ----
        name: The name of the person to greet. Defaults to "World".

    Returns:
    -------
        The greeting message.
    """
    return f"Hello, {name}!"


if __name__ == "__main__":
    # Main entry point of the script.
    # Demonstrates the usage of the greet function.
    print(greet())
