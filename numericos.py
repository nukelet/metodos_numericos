from math import sin, exp

# funcoes

def polynomial(x):
    # (x+1)^3
    return pow(x, 3) + 3*pow(x, 2) + 3*x + 1

def polynomial2(x):
    # (x-1)(x-2)
    return pow(x,2) - 3*x + 2

def sine(x):
    return sin(x)

def sigmoid(x):
    return 1/(1+exp(-x)) - 0.5

# estimadores

def biseccao(f, a, b, error=0.001):
    if a > b or f(a)*f(b) > 0:
        print(f"Valores invalidos de a (f(a) = {f(a)}) e b (f(b) = {f(b)})")
        return None, None

    mid = None
    iteracoes = 0
    while b-a > error:
        iteracoes += 1
        mid = (a+b)*0.5
        print(f"a: {a}, b: {b}")

        # mesmo sinal
        if f(a)*f(mid) > 0:
            a = mid

        else:
            b = mid

    
    return mid, iteracoes

# colocar observação:
# se a raíz for em um ponto de inflexão, o método fica demorado
def ponto_falso(f, a, b, erro=0.001):
    if a > b or f(a)*f(b) > 0:
        print(f"Valores invalidos de a (f(a) = {f(a)}) e b (f(b) = {f(b)})")
        return None

    c = (a*f(b) - b*f(a))/float(f(b) - f(a))
    iteracoes = 0

    while abs(f(c)) > erro:
        iteracoes += 1

        if abs(f(a)) < erro:
            return a, iteracoes

        elif abs(f(b)) < erro:
            return b, iteracoes

        if f(c)*f(a) > 0:
            a = c
        else:
            b = c
        
        c = (a*f(b) - b*f(a))/float(f(b) - f(a))

        if b-a < erro:
            return 0.5*(a+b), iteracoes

    return c, iteracoes
    
def rodar_estimativa(f, estimador, a, b):
    estimativa, iteracoes = estimador(f, a, b)
    print(f"estimativa: {estimativa}, iteracoes: {iteracoes}, valor: {f(estimativa)}")

def main():
    a = 1.5
    b = 3
    rodar_estimativa(polynomial2, ponto_falso, a, b)

if __name__ == '__main__':
    main()