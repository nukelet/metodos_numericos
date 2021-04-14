<TeXmacs|1.99.19>

<style|<tuple|article|std-latex>>

<\body>
  <\with|font-series|bold>
    Alunos:
  </with>

  Vinícius de Oliveira Peixoto Rodrigues (245294)

  Emerson José Bezerra da Silva (233865)

  Fabienne Araujo Santos (215556)

  <section|Discussão do problema>

  Comecemos pela equação da densidade. Para chegarmos na massa, queremos
  resolver a integral <math|<big|iiint><rsub|V>\<rho\>*dV>. Porém, \<rho\>
  não é variável, podendo, portanto, ser tirado da integral,
  <math|\<rho\><big|iiint><rsub|V>1*dV>. Essa integral, porém, se reduz ao
  volume, temos então \<rho\>V. Nos bastará, para conferirmos a fórmula
  <math|m=<frac|4*\<pi\>*r<rsup|3>|3>*\<rho\>> que
  <math|V=<frac|4*\<pi\>*r<rsup|3>|3>>. Essa fórmula para o volume poderá ser
  testada juntamente com a fórmula para o volume da calota esférica, já que a
  esfera será uma calota esférica com <math|h=2*R>.

  Tomemos a esfera:

  <move|<image|versãoinicialeditavel-1.pdf|14.8741637150728cm|12.4056801784074cm||>|0pt|0.0>

  Para a fórmula da calota esférica, consideremos um elemento de área da
  nossa esfera, que será

  um cilindro com área da base equivalente ao círculo da esfera quando
  cortada pelo plano z = h e altura dH.

  Teremos o seguinte, num corte pelo plano xz ou yz:

  <move|<image|versãoinicialeditavel-2.pdf|6.72625606716516cm|5.92468516332153cm||>|0pt|0.0>

  Isso significa que o círculo que será base do nosse elemento de área terá,
  por Pitágoras, raio:

  <\eqnarray*>
    <tformat|<table|<row|<cell|R<rsup|2>=<around|(|R-h|)><rsup|2>+r<rsup|2>>|<cell|>|<cell|>>|<row|<cell|r=<sqrt|R<rsup|2>-<around|(|R-h|)><rsup|2>>>|<cell|>|<cell|>>|<row|<cell|r=<sqrt|R<rsup|2>-R<rsup|2>+2*Rh-h<rsup|2>>>|<cell|>|<cell|>>|<row|<cell|r=<sqrt|2*Rh-h<rsup|2>>>|<cell|>|<cell|>>>>
  </eqnarray*>

  Para o caso de h\<gtr\>R, teremos um triângulo similar, mas com cateto h-R
  ao invés de R-h. Para

  a fórmula, que usa apenas o quadrado dessa diferença, isso não irá
  importar. Nosso elemento de

  volume, portanto, será igual a

  <\eqnarray*>
    <tformat|<table|<row|<cell|dV=\<pi\>*r<rsup|2>*dh>|<cell|>|<cell|>>|<row|<cell|dV=\<pi\><around*|(|<sqrt|2*Rh-h<rsup|2>>|)><rsup|2>*dh>|<cell|>|<cell|>>|<row|<cell|dV=\<pi\>*<around|(|2*Rh-h<rsup|2>|)>*dh>|<cell|>|<cell|>>>>
  </eqnarray*>

  Para termos o volume, teremos que integrar esse valor do zero até a altura
  da calota, que será

  <\equation*>
    <big|int><rsub|0><rsup|h>\<pi\>*<around|(|2*Rh<rprime|'>-h<rsup|\<prime\>*2>|)>*dh<rprime|'>
  </equation*>

  Essa integral definida terá como solução

  <\equation*>
    V=\<pi\>*<around*|(|Rh<rsup|2>-<frac|h<rsup|3>|3>|)>
  </equation*>

  Que significa que a fórmula para o volume da calota esférica do enunciado
  está correta.

  Para h = 2R, teremos

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<pi\>*<around*|(|R*<around|(|2*R|)><rsup|2>-<frac|<around|(|2*R|)><rsup|3>|3>|)>>|<cell|>|<cell|>>|<row|<cell|\<pi\>*<around*|(|4*R<rsup|3>-<frac|8*R<rsup|3>|3>|)>>|<cell|>|<cell|>>|<row|<cell|<frac|4*\<pi\>*R<rsup|3>|3>>|<cell|>|<cell|>>>>
  </eqnarray*>

  O que confirma a fórmula para o volume da esfera que buscávamos testar.

  Com as fórmulas em mãos, passemos para o problema. Queremos o ponto de
  equilíbrio da esfera.

  Temos da segunda lei de Newton que esse será o ponto em que as forças
  resultantes se somam.

  Existem, atuando na esfera duas forças, o peso, cujo módulo é dado pela
  multiplicação da massa

  por uma constante g e cuja direção será para baixo, e o empuxo, que
  conforme o princípio de

  Arquimedes terá módulo igual ao peso do líquido deslocado e direção para
  cima. Como o volume

  de líquido deslocado será igual ao volume submerso da calota, teremos então
  o seguinte

  <\eqnarray*>
    <tformat|<table|<row|<cell|mg-V<rsub|desloc>*d<rsub|á*gua>*g=0>|<cell|>|<cell|>>|<row|<cell|<frac|4*\<pi\>*R<rsup|3>*dg|3>-\<pi\>*<around*|(|Rh<rsup|2>-<frac|h<rsup|3>|3>|)>*d<rsub|á*gua>*g=0>|<cell|>|<cell|>>|<row|<cell|<frac|4*R<rsup|3>*d|3>-<around*|(|Rh<rsup|2>-<frac|h<rsup|3>|3>|)>*d<rsub|á*gua>=0>|<cell|>|<cell|>>>>
  </eqnarray*>

  Utilizando para a água a densidade de 1 (assumindo aqui unidades
  convencionais do SI) e para a

  esfera o valor dado no enunciado, 0,6, teremos

  <\eqnarray*>
    <tformat|<table|<row|<cell|<frac|2,4*R<rsup|3>|3>-<around*|(|Rh<rsup|2>-<frac|h<rsup|3>|3>|)>=0>|<cell|>|<cell|>>|<row|<cell|2,4*R<rsup|3>-<around|(|3*R<rsup|\<nosymbol\>>*h<rsup|2>-h<rsup|3>|)>=0>|<cell|>|<cell|>>|<row|<cell|h<rsup|3>-3*Rh<rsup|2>+2,4*R<rsup|3>=0>|<cell|>|<cell|>>>>
  </eqnarray*>

  Agora, queremos encontrar h em fração de R. Convertendo a equação para um
  sistema de

  unidades em que, para comprimentos, R = 1 (ou, equivalentemente, fazendo
  <math|h\<assign\>h/R>):

  <\equation*>
    h<rsup|3>-3*h<rsup|2>+2,4=0
  </equation*>

  Temos então a função para a qual queremos buscar uma raiz. Lembremos que só
  terão significado

  físico as soluções em que <math|0\<leq\>h\<leq\>2>, portanto apenas essas
  nos interessarão.

  A derivada dessa função será:

  <\equation*>
    3*h<rsup|2>-6*h
  </equation*>

  Que tem raiz em 0 e 2. Por conta da derivada ser uma função contínua e
  negativa em <math|<around*|[|0,2|]>>, isso significa que, nesse

  intervalo, a função ou é estritamente decrescente, não podendo, portanto,

  passar duas vezes pelo zero. Já que <math|0<rsup|3>-3\<times\>0<rsup|2>+2,4=2,4\<gtr\>0>
  e <math|8-3\<times\>4+2,4=-1,6\<less\>0> teremos uma

  raiz nesse intervalo, que será por isso única.

  \;

  <section|Métodos numéricos>

  \;

  Dado que a função é um polinômio sua resposta se encontra num intervalo bem
  definido e sabemos

  ser a única raiz nesse intervalo, além de sua derivada ser de cálculo
  simples, o problema maior

  parece ser não a convergência do algoritmo, mas sim a velocidade da
  convergência.

  Foi realizado para esta atividade um conjunto de testes envolvendo quatro
  métodos numéricos de obtenção de raízes: o método da bissecção, o método do
  ponto falso (regula falsi), o método do ponto fixo com uma função simples,
  e o método de Newton-Raphson. Considerou-se que esses algoritmos
  convergiram a partir do ponto em que a diferença entre duas estimativas
  sucessivas se tornou menor que <math|10<rsup|-12>>; o erro de cada método
  foi definido como o módulo da ordenada de cada estimativa <math|e>, i.e.
  <math|E=<around*|\||f<around*|(|e|)>|\|>,f<around*|(|h|)>=h<rsup|3>-3h<rsup|2>+2.4>
  .

  Os métodos foram implementados em Python 3, por eliminar a necessidade de
  se levar em consideração problemas relacionados à precisão de ponto
  flutuante (fator gerenciado automaticamente pela linguagem, permitido
  cálculos com precisão arbitrária). O código-fonte pode ser encontrado em
  <slink|https://github.com/nukelets/metodos_numericos/blob/main/root-finding/EstimadorRaizes.py>.

  <subsection|Bissecção>

  A implementação do algoritmo é relativamente simples:

  <\render-code>
    <\python>
      \ \ \ \ def bisseccao(f, a, b, erro):

      \ \ \ \ \ \ \ \ if a \<gtr\> b or f(a)*f(b) \<gtr\> 0:

      \ \ \ \ \ \ \ \ \ \ \ \ # valores inválidos de a e b

      \ \ \ \ \ \ \ \ \ \ \ \ return float("NaN"), 0

      \ \ \ \ \ \ \ \ mid = a

      \ \ \ \ \ \ \ \ iteracoes = 0

      \ \ \ \ \ \ \ \ while (b-a) \<gtr\> erro:

      \ \ \ \ \ \ \ \ \ \ \ \ iteracoes += 1

      \ \ \ \ \ \ \ \ \ \ \ \ mid = (a+b)*0.5

      \ \ \ \ \ \ \ \ \ \ \ \ # mesmo sinal

      \ \ \ \ \ \ \ \ \ \ \ \ if f(a)*f(mid) \<gtr\> 0:

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ a = mid

      \ \ \ \ \ \ \ \ \ \ \ \ else:

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b = mid

      \ \ \ \ \ 

      \ \ \ \ \ \ \ \ return mid, iteracoes
    </python>
  </render-code>

  \;

  Para esse algoritmo, encontrou-se uma estimativa de
  <with|font-series|bold|1.134137845704572>, após <with|font-series|bold|41
  iterações>, com erro da ordem de <math|10<rsup|-13>>.

  \;

  <subsection|Ponto falso>

  Abaixo se encontra a implementação do algoritmo:

  <\python>
    \ def ponto_falso(f, a, b, erro):

    \ \ \ \ \ \ \ \ if a \<gtr\> b or f(a)*f(b) \<gtr\> 0:

    \ \ \ \ \ \ \ \ \ \ \ \ # valores inválidos de a e b

    \ \ \ \ \ \ \ \ \ \ \ \ return float("NaN"), 0

    \;

    \ \ \ \ \ \ \ \ c = (a*f(b) - b*f(a))/float(f(b) - f(a))

    \ \ \ \ \ \ \ \ iteracoes = 0

    \;

    \ \ \ \ \ \ \ \ while abs(f(c)) \<gtr\> erro:

    \ \ \ \ \ \ \ \ \ \ \ \ iteracoes += 1

    \ \ \ \ \ \ \ \ \ \ \ \ if abs(f(a)) \<less\> erro:

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return a, iteracoes

    \ \ \ \ \ \ \ \ \ \ \ \ elif abs(f(b)) \<less\> erro:

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return b, iteracoes

    \;

    \ \ \ \ \ \ \ \ \ \ \ \ if f(c)*f(a) \<gtr\> 0:

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ a = c

    \ \ \ \ \ \ \ \ \ \ \ \ else:

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b = c

    \ \ \ \ \ \ \ \ \ \ \ \ 

    \ \ \ \ \ \ \ \ \ \ \ \ c = (a*f(b) - b*f(a))/float(f(b) - f(a))

    \ \ \ \ \ \ \ \ \ \ \ \ if b-a \<less\> erro:

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return 0.5*(a+b), iteracoes

    \;

    \ \ \ \ \ \ \ \ return c, iteracoes

    \;
  </python>

  Com esse método se chegou a uma estimativa de
  <with|font-series|bold|1.1341378457045543>, após apenas
  <with|font-series|bold|6> iterações, com erro da ordem de
  <math|10<rsup|-13>>.

  <subsection|Ponto fixo>

  A implementação do algoritmo se encontra abaixo:

  <\python>
    \ def ponto_fixo(f, a, b, erro):

    \ \ \ \ \ \ \ \ iteracoes = 0

    \ \ \ \ \ \ \ \ x = 0.5*(a+b)

    \ \ \ \ \ \ \ \ proximo_x = f(x)

    \;

    \ \ \ \ \ \ \ \ while (abs(proximo_x - x) \<gtr\> erro):

    \ \ \ \ \ \ \ \ \ \ \ \ x = proximo_x

    \ \ \ \ \ \ \ \ \ \ \ \ proximo_x = f(x)

    \ \ \ \ \ \ \ \ \ \ \ \ iteracoes += 1

    \;

    \ \ \ \ \ \ \ \ return proximo_x, iteracoes

    \;
  </python>

  Para esse método, obteve-se a função a ser iterada fazendo-se

  <\equation*>
    h<rsup|3>-3*h<rsup|2>+2,4=0\<Rightarrow\> h=<frac|1|3><sqrt| h<rsup|3> +
    2.4>=f<around*|(|h|)>
  </equation*>

  Os resultados não foram muito bons: estimativa de
  <with|font-series|bold|1.1341378457036264>, após <with|font-series|bold|44>
  iterações, com erro da ordem de <math|10<rsup|-12>>.

  <subsection|Newton-Raphson>

  Para este algoritmo, foi definida a derivada como

  \;

  <\python>
    \ \ \ \ def derivada(f, x, h=0.001):

    \ \ \ \ \ \ \ \ return (f(x+h) - f(x))/h
  </python>

  \;

  A partir disso, definiu-se a função <math|g<around*|(|x|)>=x - <frac|
  f<around*|(|x|)>|f<rprime|'><around*|(|x|)>>>, que foi fornecida como
  argumento para o método do ponto fixo da seção anterior:

  \;

  <\python>
    \ \ \ \ def newton_raphson(f, a, b, erro):

    \ \ \ \ \ \ \ \ g = lambda x: x - (f(x)/derivada(f, x))

    \ \ \ \ \ \ \ \ return ponto_fixo(g, a, b, erro)

    \;
  </python>

  Com este método, foi obtida a estimativa de
  <with|font-series|bold|1.1341378457045364>, após somente
  <with|font-series|bold|4> iterações, com erro da ordem de
  <math|10<rsup|-15>>.

  <section|Resultados>

  Na tabela abaixo se encontram distribuídos os resultados do conjunto de
  testes:

  \;

  <\wide-tabular>
    <tformat|<cwith|1|1|1|-1|font-series|bold>|<table|<row|<\cell>
      Método
    </cell>|<\cell>
      Estimativa
    </cell>|<\cell>
      Erro
    </cell>|<\cell>
      Iterações
    </cell>>|<row|<\cell>
      Bissecção
    </cell>|<\cell>
      1.134137845704572
    </cell>|<\cell>
      <math|10<rsup|-13>>
    </cell>|<\cell>
      41
    </cell>>|<row|<\cell>
      Ponto falso
    </cell>|<\cell>
      1.134137845704572
    </cell>|<\cell>
      <math|10<rsup|-13>>
    </cell>|<\cell>
      6
    </cell>>|<row|<\cell>
      Ponto fixo
    </cell>|<\cell>
      1.1341378457036264
    </cell>|<\cell>
      <math|10<rsup|-12>>
    </cell>|<\cell>
      44
    </cell>>|<row|<\cell>
      Newton-Raphson
    </cell>|<\cell>
      1.1341378457045364
    </cell>|<\cell>
      <math|10<rsup|-15>>
    </cell>|<\cell>
      4
    </cell>>>>
  </wide-tabular>

  \;

  \;

  Esses resultados indicam que o método de Newton-Raphson foi não somente o
  mais preciso, mas também o mais rápido, convergindo após apenas 4
  iterações. Por essa razão, foi considerado como solução da equação o
  resultado desse método, de modo que <math|h\<approx\> >1.1341378457045364,
  indicando que <with|font-series|bold|<math|h\<approx\> >1.13<math|R>>.
</body>

<\initial>
  <\collection>
    <associate|language|portuguese>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|2.1|4>>
    <associate|auto-4|<tuple|2.2|5>>
    <associate|auto-5|<tuple|2.3|6>>
    <associate|auto-6|<tuple|2.4|6>>
    <associate|auto-7|<tuple|3|6>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Discussão
      do problema> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Métodos
      numéricos> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Bissecção
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Ponto falso
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Ponto fixo
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Newton-Raphson
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Resultados>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>