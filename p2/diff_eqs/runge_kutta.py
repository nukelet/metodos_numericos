import numpy as np
import matplotlib.pyplot as plt
from typing import Callable

"""
Runge-Kutta: solves diff eqns of the form y' = f(t, y)
f: the function itself
f0: the value of f evaluated at the left boundary (f(a))
a: left boundary of the solution interval
b: right boundary of the solution interval
n: number of steps (= partitions of the interval)
"""
def runge_kutta(f: Callable[[float, float], float], f0, a, b, n):
    if (b < a):
        print("Invalid interval boundaries (b < a)")
        return
    
    t = a
    h = (b-a)/n

    y_vals = np.zeros(n)
    y_vals[0] = f0

    for i in range(n-1):
        y = y_vals[i]

        k1 = f(t, y)
        k2 = f(t + 0.5*h, y + 0.5*h*k1)
        k3 = f(t + 0.5*h, y + 0.5*h*k2)
        k4 = f(t + h, y + h*k3)

        y_vals[i+1] = y + 1/6 * h * (k1 + 2*k2 + 2*k3 + k4)
        t += h

    print(y_vals)
    return y_vals

def f(t, y):
    return 0.025 * y * (1 - y/(2000 + np.exp(-t/12)))

if __name__ == "__main__":
    a = 0
    b = 75
    n = 500
    h = (b-a)/n
    y_vals = runge_kutta(f, 121, 0, 75, 500)
    plt.plot(np.arange(0, 75, h), y_vals)
    plt.show()
