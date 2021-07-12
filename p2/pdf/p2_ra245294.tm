<TeXmacs|2.1>

<style|generic>

<\body>
  <\with|font-series|bold>
    Quest�o 1: O vetor abaixo cont�m os �ltimos 66 valores para as mortes
    di�rias em todo o mundo nos �ltimos 66 dias. Fa�a uma previs�o do n�mero
    de mortes di�rias no dia 80. Justifique sua escolha da fun��o a ser
    ajustada. Critique avaliativamente seu resultado: por que voc� tende a
    acreditar nele?
  </with>

  <\small-figure|<image|images/scatter_covid.png|300pt|300pt|0.20h|>>
    Scatter plot dos valores para o n�mero de mortes di�rias por covid nos
    �ltimos 66 dias
  </small-figure>

  Ao se observar o gr�fico, percebe-se que a forma geral � claramente a de
  uma curva descrescente (felizmente!). Tamb�m � poss�vel inferir visualmente
  que a curva tem concavidade para cima, sugerindo que um ajuste linear pode
  n�o ser a melhor op��o. Com isso em mente, fiz testes de ajuste pelo m�todo
  dos m�nimos quadrados para tr�s op��es de fun��o:

  i) <math|y= c<rsub|1>+c<rsub|2> x>, com <math|\<varphi\><rsub|1>=1,>
  <math|\<varphi\><rsub|2>=x>

  ii) <math|y=<space|0.2spc>c<rsub|1>+c<rsub|2> x+c<rsub|3> x<rsup|2>>, com
  <math|\<varphi\><rsub|1>=1,> <math|\<varphi\><rsub|2>=x>,
  <math|\<varphi\><rsub|3>=x<rsup|2>>

  iii) <math|y= a e<rsup|b x>\<Rightarrow\> ln y=ln a+b x\<equiv\> <wide|
  y|~>=c<rsub|1>+c<rsub|2> x>, com <math|\<varphi\><rsub|1>=1,>
  <math|\<varphi\><rsub|2>=x>

  Para se encontrar os coeficientes <math|c<rsub|k>>,
  <math|i=1,2,\<ldots\>,n> pelo MMQ a partir de <math|N> pontos
  <math|<around*|(|x<rsub|1>,y<rsub|1>|)>,\<ldots\>,<around*|(|x<rsub|N>,y<rsub|N>|)>>,
  � necess�rio resolver o sistema

  <math|>

  <\eqnarray*>
    <tformat|<table|<row|<cell|AC=B>|<cell|>|<cell|>>|<row|<cell|<around*|(|A|)><rsub|ij>=<big|sum><rsup|N><rsub|k=1>\<varphi\><rsub|i><around*|(|x<rsub|k>|)>\<varphi\><rsub|j><around*|(|x<rsub|k>|)>
    \ >|<cell|>|<cell|>>|<row|<cell|C=<matrix|<tformat|<table|<row|<cell|c<rsub|1>>>|<row|<cell|\<ldots\>.>>|<row|<cell|c<rsub|n>>>>>>>|<cell|>|<cell|>>|<row|<cell|B=<matrix|<tformat|<table|<row|<cell|<big|sum><rsup|N><rsub|k=1>y<rsub|k>\<varphi\><rsub|1><around*|(|x<rsub|k>|)>>>|<row|<cell|\<ldots\>.>>|<row|<cell|<big|sum><rsup|N><rsub|k=1>y<rsub|k>\<varphi\><rsub|n><around*|(|x<rsub|k>|)>>>>>>
    <rsub|> >|<cell|>|<cell|>>>>
  </eqnarray*>

  De modo que os coeficientes s�o dados por <math|C=A<rsup|-1>B>.

  Al�m disso, para avaliar o ajuste para cada fun��o escolhida, calculei a
  ra�z do desvio quadr�tico m�dio entre o modelo do MMQ e os dados
  experimentais:

  <\equation*>
    erro=<sqrt|<frac| 1|N> <big|sum><rsup|N><rsub|i=0><around*|(|y<rsub|i>-<wide|
    y|^><around*|(|x<rsub|i>|)><rsup|>|)><rsup|2> >
  </equation*>

  m

  onde <math|<wide| y|^><around*|(|x|)>> � o modelo obtido pelo MMQ. Os
  resultados obtidos foram:

  \;

  i) <math|y<around*|(|x|)>=14526.12-117.44x>, com erro de <math|1371.34> e
  <math|y<around*|(|80|)>=5130.92>

  ii) <math|y<around*|(|x|)>=14758.67-139.24x+0.34x<rsup|2>>, com erro de
  <math|1367.01> e <math|y<around*|(|80|)>=5795.47>

  iii) <math|y<around*|(|x|)>=14915.20 e<rsup|-0.01 x>>, com erro de
  <math|1377.47> e <math|y<around*|(|80|)>=6701.74>

  \;

  Os resultados se encontram plotados abaixo:

  <\big-figure|<image|images/covid_models.png|300pt|300pt|0.1h|>>
    \;
  </big-figure>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|../../../../../.TeXmacs/texts/scratch/no_name_3.tm>>
    <associate|auto-2|<tuple|2|2|../../../../../.TeXmacs/texts/scratch/no_name_3.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1>|>
        Scatter plot dos valores para o n�mero de mortes di�rias por covid
        nos �ltimos 66 dias
      </surround>|<pageref|auto-1>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|2>|>
        \;
      </surround>|<pageref|auto-2>>
    </associate>
  </collection>
</auxiliary>