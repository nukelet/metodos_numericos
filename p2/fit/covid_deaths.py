from numpy.lib import math
from least_squares import least_squares
import numpy as np
import matplotlib.pyplot as plt

values = None
with open("covid_deaths.csv", "r") as f:
    values = []
    for value in f.read().strip().split(","):
        values.append(int(value))

data = np.array(values)
log_data = np.array([math.log(y) for y in data])

plt.scatter(np.arange(data.size), data)

quadratic = [lambda x: 1, lambda x: x, lambda x: x**2]
quadratic_coefs = least_squares(
        quadratic,
        np.arange(data.size),
        data
        )

linear = [lambda x: 1, lambda x: x]
linear_coefs = least_squares(
        linear,
        np.arange(data.size),
        data
        )

exp_coefs = least_squares(
        linear,
        np.arange(data.size),
        log_data
        )
exp_coefs[0] = math.exp(exp_coefs[0])

print(linear_coefs)
print(quadratic_coefs)
print(exp_coefs)
days = np.arange(data.size)

def generate_model_results(days, parameters, coefs):
    model_values = []
    for x in days:
        a = 0
        for i, func in enumerate(parameters):
            a += coefs[i] * func(x)
        model_values.append(a)
    return model_values

linear_model_values = generate_model_results(days, linear, linear_coefs)
plt.plot(days, generate_model_results(days, linear, linear_coefs), label="linear")
print(math.sqrt(sum([(x-y)**2 for x, y in zip(data, linear_model_values)])/data.size))

quadratic_model_values = generate_model_results(days, quadratic, quadratic_coefs)
plt.plot(days, generate_model_results(days, quadratic, quadratic_coefs), label="quadratic")
print(math.sqrt(sum([(x-y)**2 for x, y in zip(data, quadratic_model_values)])/data.size))

# exponential model
a = exp_coefs[0]
b = exp_coefs[1]
exp_model_values = [a*math.exp(b*x) for x in days]
plt.plot(days, exp_model_values, label="exponential")
print(math.sqrt(sum([(x-y)**2 for x, y in zip(data, exp_model_values)])/data.size))

plt.legend()
plt.show()
