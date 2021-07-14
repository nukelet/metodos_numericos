import numpy as np
from numpy.lib import math
from least_squares import least_squares
import matplotlib.pyplot as plt

x_vals = np.array([0.06813, 0.17032, 0.32361, 0.55355, 0.89845, 1.41581, 2.19184])
y_vals = np.array([121.9718, 123.4432, 125.6814, 129.1098, 134.4159, 142.7555, 156.1629])

plt.scatter(x_vals, y_vals)

coefs = least_squares([lambda x: 1, lambda x: x],
        x_vals, y_vals)
print(coefs)
plt.plot(x_vals, [coefs[0] + coefs[1]*t for t in x_vals])
error = math.sqrt(sum([(y - (coefs[0] + coefs[1]*x))**2 for x, y in zip(x_vals, y_vals)])/x_vals.size)
print(error)
plt.show()
