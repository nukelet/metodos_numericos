import numpy as np

"""
find (x0, y0, z0) such that f = g = h = 0 for

f(x,y,z) = 3x^2y^2 - z + 2,
g(x,y,z) = x – 2y^2 - 3z^2 + 12,
h(x,y,z) = x + y – 0.5.
"""

def F(p):
    x = p[0]
    y = p[1]
    z = p[2]

    return np.array([
        3* x**2 * y**2 - z + 2,
        x - 2*y**2 - 3*z**2 + 12,
        x + y - 0.5
    ])

def jacobian(p):
    x = p[0]
    y = p[1]
    z = p[2]

    J_f = [6*x*y**2, 6*y*x**2, -1]
    J_g = [1, -4*y, -6*z]
    J_h = [1, 1, 0]
    return np.array([J_f, J_g, J_h])

def nonlinear_newton(F):
    # initial estimative
    old_x = np.array([0, 0, 0])
    new_x = np.array([100, 100, 100])
    tolerance = 0.001
    
    count = 0
    while (np.linalg.norm((old_x - new_x)) > tolerance):
        count += 1
        old_x = new_x
        J_inv = np.linalg.inv(jacobian(old_x))
        new_x = old_x - np.matmul(J_inv, F(old_x))

    return new_x, count

sol, iteracoes = nonlinear_newton(F)
erro = F(sol)
print("Metodo: Newton nao-linear")
print(f"estimativa: {sol}\niteracoes: {iteracoes}\nerro: {erro}")
