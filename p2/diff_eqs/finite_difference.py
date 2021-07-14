import numpy as np
import matplotlib.pyplot as plt
from typing import Callable

"""
finite_difference

Solve a second order ODE ay'' + by' + cy = f(t)
on an interval (start, end) with n subdivisions
"""
def finite_difference(a, b, c, f, y_start, y_end,
        start, end, n):
    if end < start:
        print("Invalid interval boundaries (b < a)")
        return None

    h = (end - start)/n
    alpha = a - 0.5*b*h
    beta = -2*a + c*h*h
    gamma = a + 0.5*b*h

    A = np.zeros((n-2, n-2))
    B = np.zeros(n-2)

    A[0, 0] = beta
    A[0, 1] = gamma
    A[n-3, n-4] = alpha
    A[n-3, n-3] = beta
    for i in range(1, n-3):
        A[i, i-1] = alpha
        A[i, i] = beta
        A[i, i+1] = gamma

    t = start + h
    for i in range(n-2):
        B[i] = f(t)
        t += h
    B *= h**2
    B[0] -= alpha*y_start
    B[n-3] -= gamma*y_end
    
    return np.matmul(np.linalg.inv(A), B)

def f(t):
    if t >= 1 and t <= 3.5:
        return 2
    else:
        return 0

if __name__ == "__main__":
    n = 1000
    y_vals = finite_difference(1, 2.12, 0.078, f,
            2, 2,
            0, 5, n)
    h = 5/n
    plt.plot(np.arange(h, 5-h, h), y_vals)
    plt.show()
