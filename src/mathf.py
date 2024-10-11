"""
This module contains the Mathfunc class with basic mathematical operations.
"""


class Mathfunc:
    """A class for basic math functions like addition and subtraction."""

    @staticmethod
    def adding(a: int, b: int) -> int:
        """This is an addition math function

        Returns:
            int: returns sum of given 2 parameters
        """
        return a + b

    @staticmethod
    def subt(a: int, b: int) -> int:
        """This is a subtraction math function

        Args:
            a (int): first value
            b (int): second value

        Returns:
            int: returns difference of given 2 parameters
        """
        return a - b
