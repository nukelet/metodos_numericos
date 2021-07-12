import numpy as np
import numpy.typing as npt
from typing import Callable


"""

"""
def least_squares(
        parameters: list[Callable[[float], float]],
        x_vals: npt.ArrayLike,
        y_vals: npt.ArrayLike) -> npt.ArrayLike:

    x_vals = np.array(x_vals)
    y_vals = np.array(y_vals)

    if (x_vals.ndim != 1):
        print("Error: data is not a 1d array")
        return 0
    if (x_vals.size != y_vals.size):
        print("Error: mismatch between x and y arrays")
        return 0

    # A*C = B
    n = len(parameters)
    data_size = x_vals.size

    A = np.zeros((n, n))
    for i in range(n):
        for j in range(n):
            for x in x_vals:
                A[i, j] += parameters[i](x) * parameters[j](x)

    B = np.zeros((n, 1))
    for i in range(n):
        for k in range(data_size):
            x = x_vals[k]
            y = y_vals[k]
            B[i] += parameters[i](x) * y

    C = np.matmul(np.linalg.inv(A), B)
    return C
