<TeXmacs|1.99.19>

<style|<tuple|article|std-latex>>

<\body>
  <\with|font-series|bold>
    Alunos:
  </with>

  Vin�cius de Oliveira Peixoto Rodrigues (245294)

  Emerson Jos� Bezerra da Silva (233865)

  Fabienne Araujo Santos (215556)

  <section|Discuss�o do problema>

  Comecemos pela equa��o da densidade. Para chegarmos na massa, queremos
  resolver a integral <math|<big|iiint><rsub|V>\<rho\>*dV>. Por�m, \<rho\>
  n�o � vari�vel, podendo, portanto, ser tirado da integral,
  <math|\<rho\><big|iiint><rsub|V>1*dV>. Essa integral, por�m, se reduz ao
  volume, temos ent�o \<rho\>V. Nos bastar�, para conferirmos a f�rmula
  <math|m=<frac|4*\<pi\>*r<rsup|3>|3>*\<rho\>> que
  <math|V=<frac|4*\<pi\>*r<rsup|3>|3>>. Essa f�rmula para o volume poder� ser
  testada juntamente com a f�rmula para o volume da calota esf�rica, j� que a
  esfera ser� uma calota esf�rica com <math|h=2*R>.

  Tomemos a esfera:

  <move|<image|vers�oinicialeditavel-1.pdf|14.8741637150728cm|12.4056801784074cm||>|0pt|0.0>

  Para a f�rmula da calota esf�rica, consideremos um elemento de �rea da
  nossa esfera, que ser�

  um cilindro com �rea da base equivalente ao c�rculo da esfera quando
  cortada pelo plano z = h e altura dH.

  Teremos o seguinte, num corte pelo plano xz ou yz:

  <move|<image|vers�oinicialeditavel-2.pdf|6.72625606716516cm|5.92468516332153cm||>|0pt|0.0>

  Isso significa que o c�rculo que ser� base do nosse elemento de �rea ter�,
  por Pit�goras, raio:

  <\eqnarray*>
    <tformat|<table|<row|<cell|R<rsup|2>=<around|(|R-h|)><rsup|2>+r<rsup|2>>|<cell|>|<cell|>>|<row|<cell|r=<sqrt|R<rsup|2>-<around|(|R-h|)><rsup|2>>>|<cell|>|<cell|>>|<row|<cell|r=<sqrt|R<rsup|2>-R<rsup|2>+2*Rh-h<rsup|2>>>|<cell|>|<cell|>>|<row|<cell|r=<sqrt|2*Rh-h<rsup|2>>>|<cell|>|<cell|>>>>
  </eqnarray*>

  Para o caso de h\<gtr\>R, teremos um tri�ngulo similar, mas com cateto h-R
  ao inv�s de R-h. Para

  a f�rmula, que usa apenas o quadrado dessa diferen�a, isso n�o ir�
  importar. Nosso elemento de

  volume, portanto, ser� igual a

  <\eqnarray*>
    <tformat|<table|<row|<cell|dV=\<pi\>*r<rsup|2>*dh>|<cell|>|<cell|>>|<row|<cell|dV=\<pi\><around*|(|<sqrt|2*Rh-h<rsup|2>>|)><rsup|2>*dh>|<cell|>|<cell|>>|<row|<cell|dV=\<pi\>*<around|(|2*Rh-h<rsup|2>|)>*dh>|<cell|>|<cell|>>>>
  </eqnarray*>

  Para termos o volume, teremos que integrar esse valor do zero at� a altura
  da calota, que ser�

  <\equation*>
    <big|int><rsub|0><rsup|h>\<pi\>*<around|(|2*Rh<rprime|'>-h<rsup|\<prime\>*2>|)>*dh<rprime|'>
  </equation*>

  Essa integral definida ter� como solu��o

  <\equation*>
    V=\<pi\>*<around*|(|Rh<rsup|2>-<frac|h<rsup|3>|3>|)>
  </equation*>

  Que significa que a f�rmula para o volume da calota esf�rica do enunciado
  est� correta.

  Para h = 2R, teremos

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<pi\>*<around*|(|R*<around|(|2*R|)><rsup|2>-<frac|<around|(|2*R|)><rsup|3>|3>|)>>|<cell|>|<cell|>>|<row|<cell|\<pi\>*<around*|(|4*R<rsup|3>-<frac|8*R<rsup|3>|3>|)>>|<cell|>|<cell|>>|<row|<cell|<frac|4*\<pi\>*R<rsup|3>|3>>|<cell|>|<cell|>>>>
  </eqnarray*>

  O que confirma a f�rmula para o volume da esfera que busc�vamos testar.

  Com as f�rmulas em m�os, passemos para o problema. Queremos o ponto de
  equil�brio da esfera.

  Temos da segunda lei de Newton que esse ser� o ponto em que as for�as
  resultantes se somam.

  Existem, atuando na esfera duas for�as, o peso, cujo m�dulo � dado pela
  multiplica��o da massa

  por uma constante g e cuja dire��o ser� para baixo, e o empuxo, que
  conforme o princ�pio de

  Arquimedes ter� m�dulo igual ao peso do l�quido deslocado e dire��o para
  cima. Como o volume

  de l�quido deslocado ser� igual ao volume submerso da calota, teremos ent�o
  o seguinte

  <\eqnarray*>
    <tformat|<table|<row|<cell|mg-V<rsub|desloc>*d<rsub|�*gua>*g=0>|<cell|>|<cell|>>|<row|<cell|<frac|4*\<pi\>*R<rsup|3>*dg|3>-\<pi\>*<around*|(|Rh<rsup|2>-<frac|h<rsup|3>|3>|)>*d<rsub|�*gua>*g=0>|<cell|>|<cell|>>|<row|<cell|<frac|4*R<rsup|3>*d|3>-<around*|(|Rh<rsup|2>-<frac|h<rsup|3>|3>|)>*d<rsub|�*gua>=0>|<cell|>|<cell|>>>>
  </eqnarray*>

  Utilizando para a �gua a densidade de 1 (assumindo aqui unidades
  convencionais do SI) e para a

  esfera o valor dado no enunciado, 0,6, teremos

  <\eqnarray*>
    <tformat|<table|<row|<cell|<frac|2,4*R<rsup|3>|3>-<around*|(|Rh<rsup|2>-<frac|h<rsup|3>|3>|)>=0>|<cell|>|<cell|>>|<row|<cell|2,4*R<rsup|3>-<around|(|3*R<rsup|\<nosymbol\>>*h<rsup|2>-h<rsup|3>|)>=0>|<cell|>|<cell|>>|<row|<cell|h<rsup|3>-3*Rh<rsup|2>+2,4*R<rsup|3>=0>|<cell|>|<cell|>>>>
  </eqnarray*>

  Agora, queremos encontrar h em fra��o de R. Convertendo a equa��o para um
  sistema de

  unidades em que, para comprimentos, R = 1 (ou, equivalentemente, fazendo
  <math|h\<assign\>h/R>):

  <\equation*>
    h<rsup|3>-3*h<rsup|2>+2,4=0
  </equation*>

  Temos ent�o a fun��o para a qual queremos buscar uma raiz. Lembremos que s�
  ter�o significado

  f�sico as solu��es em que <math|0\<leq\>h\<leq\>2>, portanto apenas essas
  nos interessar�o.

  A derivada dessa fun��o ser�:

  <\equation*>
    3*h<rsup|2>-6*h
  </equation*>

  Que tem raiz em 0 e 2. Por conta da derivada ser uma fun��o cont�nua e
  negativa em <math|<around*|[|0,2|]>>, isso significa que, nesse

  intervalo, a fun��o ou � estritamente decrescente, n�o podendo, portanto,

  passar duas vezes pelo zero. J� que <math|0<rsup|3>-3\<times\>0<rsup|2>+2,4=2,4\<gtr\>0>
  e <math|8-3\<times\>4+2,4=-1,6\<less\>0> teremos uma

  raiz nesse intervalo, que ser� por isso �nica.

  \;

  <section|M�todos num�ricos>

  \;

  Dado que a fun��o � um polin�mio sua resposta se encontra num intervalo bem
  definido e sabemos

  ser a �nica raiz nesse intervalo, al�m de sua derivada ser de c�lculo
  simples, o problema maior

  parece ser n�o a converg�ncia do algoritmo, mas sim a velocidade da
  converg�ncia.

  Foi realizado para esta atividade um conjunto de testes envolvendo quatro
  m�todos num�ricos de obten��o de ra�zes: o m�todo da bissec��o, o m�todo do
  ponto falso (regula falsi), o m�todo do ponto fixo com uma fun��o simples,
  e o m�todo de Newton-Raphson. Considerou-se que esses algoritmos
  convergiram a partir do ponto em que a diferen�a entre duas estimativas
  sucessivas se tornou menor que <math|10<rsup|-12>>; o erro de cada m�todo
  foi definido como o m�dulo da ordenada de cada estimativa <math|e>, i.e.
  <math|E=<around*|\||f<around*|(|e|)>|\|>,f<around*|(|h|)>=h<rsup|3>-3h<rsup|2>+2.4>
  .

  Os m�todos foram implementados em Python 3, por eliminar a necessidade de
  se levar em considera��o problemas relacionados � precis�o de ponto
  flutuante (fator gerenciado automaticamente pela linguagem, permitido
  c�lculos com precis�o arbitr�ria). O c�digo-fonte pode ser encontrado em
  <slink|https://github.com/nukelets/metodos_numericos/blob/main/root-finding/EstimadorRaizes.py>.

  <subsection|Bissec��o>

  A implementa��o do algoritmo � relativamente simples:

  <\render-code>
    <\python>
      \ \ \ \ def bisseccao(f, a, b, erro):

      \ \ \ \ \ \ \ \ if a \<gtr\> b or f(a)*f(b) \<gtr\> 0:

      \ \ \ \ \ \ \ \ \ \ \ \ # valores inv�lidos de a e b

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
  <with|font-series|bold|1.134137845704572>, ap�s <with|font-series|bold|41
  itera��es>, com erro da ordem de <math|10<rsup|-13>>.

  \;

  <subsection|Ponto falso>

  Abaixo se encontra a implementa��o do algoritmo:

  <\python>
    \ def ponto_falso(f, a, b, erro):

    \ \ \ \ \ \ \ \ if a \<gtr\> b or f(a)*f(b) \<gtr\> 0:

    \ \ \ \ \ \ \ \ \ \ \ \ # valores inv�lidos de a e b

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

  Com esse m�todo se chegou a uma estimativa de
  <with|font-series|bold|1.1341378457045543>, ap�s apenas
  <with|font-series|bold|6> itera��es, com erro da ordem de
  <math|10<rsup|-13>>.

  <subsection|Ponto fixo>

  A implementa��o do algoritmo se encontra abaixo:

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

  Para esse m�todo, obteve-se a fun��o a ser iterada fazendo-se

  <\equation*>
    h<rsup|3>-3*h<rsup|2>+2,4=0\<Rightarrow\> h=<frac|1|3><sqrt| h<rsup|3> +
    2.4>=f<around*|(|h|)>
  </equation*>

  Os resultados n�o foram muito bons: estimativa de
  <with|font-series|bold|1.1341378457036264>, ap�s <with|font-series|bold|44>
  itera��es, com erro da ordem de <math|10<rsup|-12>>.

  <subsection|Newton-Raphson>

  Para este algoritmo, foi definida a derivada como

  \;

  <\python>
    \ \ \ \ def derivada(f, x, h=0.001):

    \ \ \ \ \ \ \ \ return (f(x+h) - f(x))/h
  </python>

  \;

  A partir disso, definiu-se a fun��o <math|g<around*|(|x|)>=x - <frac|
  f<around*|(|x|)>|f<rprime|'><around*|(|x|)>>>, que foi fornecida como
  argumento para o m�todo do ponto fixo da se��o anterior:

  \;

  <\python>
    \ \ \ \ def newton_raphson(f, a, b, erro):

    \ \ \ \ \ \ \ \ g = lambda x: x - (f(x)/derivada(f, x))

    \ \ \ \ \ \ \ \ return ponto_fixo(g, a, b, erro)

    \;
  </python>

  Com este m�todo, foi obtida a estimativa de
  <with|font-series|bold|1.1341378457045364>, ap�s somente
  <with|font-series|bold|4> itera��es, com erro da ordem de
  <math|10<rsup|-15>>.

  <section|Resultados>

  Na tabela abaixo se encontram distribu�dos os resultados do conjunto de
  testes:

  \;

  <\wide-tabular>
    <tformat|<cwith|1|1|1|-1|font-series|bold>|<table|<row|<\cell>
      M�todo
    </cell>|<\cell>
      Estimativa
    </cell>|<\cell>
      Erro
    </cell>|<\cell>
      Itera��es
    </cell>>|<row|<\cell>
      Bissec��o
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

  Esses resultados indicam que o m�todo de Newton-Raphson foi n�o somente o
  mais preciso, mas tamb�m o mais r�pido, convergindo ap�s apenas 4
  itera��es. Por essa raz�o, foi considerado como solu��o da equa��o o
  resultado desse m�todo, de modo que <math|h\<approx\> >1.1341378457045364,
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
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Discuss�o
      do problema> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>M�todos
      num�ricos> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Bissec��o
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