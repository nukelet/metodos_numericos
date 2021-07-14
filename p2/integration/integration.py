import scipy.integrate as integrate
import numpy as np
import timeit

def f(x):
    return abs(np.sin(x) * np.cos(x)) ** 1.5

def gauss_quad(f):
    return integrate.quadrature(f, 0, np.pi*0.5)

def romberg(f):
    return integrate.romberg(f, 0, np.pi*0.5)

if __name__ == "__main__":
    print(gauss_quad(f))

    print(
        "gauss_quad:",
        timeit.timeit('gauss_quad(f)',
        setup="import scipy.integrate as integrate; from __main__ import gauss_quad",
        globals=locals(), number=1000))

    print(
        "romberg:",
        timeit.timeit('romberg(f)',
        setup="import scipy.integrate as integrate; from __main__ import romberg",
        globals=locals(), number=1000))
