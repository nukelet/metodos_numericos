from typing import Callable, Tuple
import math
import matplotlib.pyplot as plt
import numpy as np

class EstimadorRaizes:
    """
    Classe usada para estimar raízes de funções.

    Exemplo de uso:

    def equacao(x): return x**2 - 2

    estimador = EstimadorRaizes(f, 0, 5)
    estimativa, iteracoes = estimador.newton_raphson()

    ...

    estimador = EstimadorRaizes(lambda x: math.cos(x), 0, 3)
    estimativa, iteracoes = estimador.bisseccao()
    """
    def __init__(self,
                 funcao: Callable[[float], float],
                 limite_inf: float,
                 limite_sup: float,
                 erro: float = 0.001
    ) -> None:
        """ Constrói um objeto EstimadorRaizes.
        
        Constrói um objeto EstimadorRaizes, que procura utilizando
        diversos métodos numéricos a raíz de uma função dentro de
        um intervalo (limite_inf, limite_sup).

        Args:
            funcao:     uma função que recebe um float e devolve um
                        float, representando a função cujas raízes
                        devem ser encontradas
            limite_inf: limite inferior do intervalo onde a raíz
                        será procurada
            limite_sup: limite superior do intervalo onde a raíz
                        será procurada
            erro:       diferença mínima entre duas estimativas
                        sucessivas de raíz para que se considere
                        que a estimativa convergiu
        """

        self.funcao = funcao
        self.limite_inf = limite_inf
        self.limite_sup = limite_sup
        self.erro = erro


    def bisseccao(self) -> Tuple[float, int]:
        f = self.funcao
        a = self.limite_inf
        b = self.limite_sup
        erro = self.erro

        if a > b or f(a)*f(b) > 0:
            print(f"Valores invalidos de a (f(a) = {f(a)}) e b (f(b) = {f(b)})")
            return float("NaN"), 0

        mid = a
        iteracoes = 0
        while (b-a) > erro:
            iteracoes += 1
            mid = (a+b)*0.5
            # print(f"a: {a}, b: {b}")

            # mesmo sinal
            if f(a)*f(mid) > 0:
                a = mid

            else:
                b = mid
     
        return mid, iteracoes


# observação:
# se a raíz for em um ponto de inflexão, o método fica demorado
    def ponto_falso(self) -> Tuple[float, int]:
        f = self.funcao
        a = self.limite_inf
        b = self.limite_sup
        erro = self.erro

        if a > b or f(a)*f(b) > 0:
            print(f"Valores invalidos de a (f(a) = {f(a)}) e b (f(b) = {f(b)})")
            return float("NaN"), 0

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


# x_{n+1} = f(x_n)
    def _ponto_fixo(self, f: Callable[[float], float]) -> Tuple[float, int]:
        a = self.limite_inf
        b = self.limite_sup
        erro = self.erro

        iteracoes = 0
        old_x = 0.5*(a+b)
        next_x = f(old_x)

        while (abs(next_x - old_x) > erro):
            old_x = next_x
            next_x = f(old_x)
            iteracoes += 1

        return next_x, iteracoes


    def _derivada(self, f, x, h=0.001) -> float:
        return (f(x+h) - f(x))/h


    def newton_raphson(self) -> Tuple[float, int]:
        f = self.funcao

        g = lambda x: x - (f(x)/self._derivada(f, x))
        return self._ponto_fixo(g)

def equacao(x):
    return np.sin((x-0.23)**2) - np.exp(x**2) + 3*x
def equacao_ponto_fixo(x):
    return (1/3) * (math.exp(x**2) - math.sin((x-0.23)**2))

# def equacao(x):
#     return math.exp(-x**2) + x
# def equacao_ponto_fixo(x):
#     return -math.exp(-x**2)

def main():
    a = 1
    b = 2

    fig, ax = plt.subplots()
    t = np.arange(-2, 2, 0.01)
    ax.plot(t, equacao(t))
    ax.plot(t, np.array([0]*len(t)))
    # plt.show()
    
    estimador = EstimadorRaizes(equacao, a, b, erro=1e-12)
    
    estimativa, iteracoes = estimador.bisseccao()
    print("Método: bissecção")
    print(f"estimativa: {estimativa}, iteracoes: {iteracoes}, valor: {equacao(estimativa)}")
    
    estimativa, iteracoes = estimador.ponto_falso()
    print("Método: ponto falso")
    print(f"estimativa: {estimativa}, iteracoes: {iteracoes}, valor: {equacao(estimativa)}")

    estimativa, iteracoes = estimador._ponto_fixo(equacao_ponto_fixo)
    print("Método: ponto fixo")
    print(f"estimativa: {estimativa}, iteracoes: {iteracoes}, valor: {equacao(estimativa)}")
    
    estimativa, iteracoes = estimador.newton_raphson()
    print("Método: Newton-Raphson")
    print(f"estimativa: {estimativa}, iteracoes: {iteracoes}, valor: {equacao(estimativa)}")


if __name__ == '__main__':
    main()
