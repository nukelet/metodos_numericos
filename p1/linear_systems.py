import numpy as np
from scipy.linalg import lu

def lu_decomposition(A, B): 
    m = A.shape[0]
    n = A.shape[1]
    
    """
    This calculates A = PLU, but we're interested in P'A = LU,
    where P' is the inverse of P, which in turn equals the
    transpose of P (since P is a permutation matrix)
    """
    P, L, U = lu(A, permute_l = False)
    P = P.T

    """
    Now we solve Ax = B -> LUx = PB -> Ly = PB for y
    """
    y = np.matmul(P, B)
    for pivot in range(0, n):
        y[pivot] /= L[pivot, pivot]
        for i in range(pivot+1, m):
            y[i] -= L[i, pivot] * y[pivot]


    """
    And now we solve Ux = y
    """
    x = y
    for pivot in range(n-1, -1, -1):
        x[pivot] /= U[pivot, pivot]
        for i in range(0, pivot):
            x[i] -= U[i, pivot] * x[pivot]

    return x

def gauss_seidel(A, B, jacobi=False, iterations=20):
    m = A.shape[0]
    n = A.shape[1]

    P = np.array(A)
    for i in range(m):
        for j in range(m):
            P[i, j] /= A[i, i]

    for i in range(n):
        P[i, i] = 0

    P *= -1
    
    D = np.array(B)
    for i in range(n):
        D[i] /= A[i, i]

    x = np.zeros(n)
    for _ in range(iterations):
        if jacobi:
            x = np.matmul(P, x) + D
        else:
            for i in range(n):
                x[i] = 0
                for j in range(n):
                    x[i] += P[i, j]*x[j]
                x[i] += D[i]

    return x

n = 251
m = np.zeros((n, n))

for i in range(n):
    m[i, i] = 2.35
for i in range(n-1):
    m[i, i+1] = -0.78
    m[i+1, i] = -0.41
for i in range(n-25):
    m[i, i+25] = -0.51
    m[i+25, i] = -0.28

b = np.zeros(n)

for i in range(0, n, 2):
    b[i] = 1.5
for i in range(1, n-1, 2):
    b[i] = 0.75

res_lu = lu_decomposition(m, b)
res_jacobi = gauss_seidel(m, b, True, 100)
res_gauss_seidel = gauss_seidel(m, b, False, 100)

erro_max_lu = float((np.matmul(m, res_lu)-b).max())
erro_max_jacobi = float((np.matmul(m, res_jacobi)-b).max())
erro_max_gauss_seidel = float((np.matmul(m, res_gauss_seidel)-b).max())

print(f"erro maximo lu: {erro_max_lu}")
print(f"erro maximo jacobi: {erro_max_jacobi}")
print(f"erro maximo gauss-seidel: {erro_max_gauss_seidel}")

with open("q4_lu.csv", "w+") as f:
    for element in list(res_lu):
        f.write(str(element) + ', ')

with open("q4_jacobi.csv", "w+") as f:
    for element in list(res_jacobi):
        f.write(str(element) + ', ')

with open("q4_gauss_seidel.csv", "w+") as f:
    for element in list(res_gauss_seidel):
        f.write(str(element) + ', ')
