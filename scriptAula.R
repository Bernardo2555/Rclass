### Fun��es de R

#configurando uma seed para tornar uma amostra 
#aleat�ria reproduz�vel, escolha o n�mero que desejar
set.seed(65)

#com nome do argumento, ordem exata do argumento
runif(n = 9, min = 3, max = 6)

set.seed(65)

#sem nome do argumento, ordem exata do argumento
runif(9, 3, 6)

set.seed(65)

#com nome do argumento, ordem mista
runif(min = 3, max = 6, n = 9)

set.seed(65)

#sem nome do argumento, ordem mista
runif(3, 6, 9) # n=3 min=6 max=9

set.seed(65)

#apenas o primeiro argumento
runif(3)

set.seed(65)

#faltando um argumento
runif(3,,4)




###Primeiras etapas de codifica��o

# R como calculadora
4 + 4                        + 5

# Operadores: + - / * ^

#Usando v�rios operadores e parenteses
(5-3)^3

#Criando objetos
x <- c(4,5,6) # ou 4:6

#setas funcionam para os dois lados
c(4, 5.2, 76) -> y 
#escrever apenas o nome do objeto mostra seu conteudo
y 

#o simbolo = funciona apeans nesse formato, diferente da seta
x = c(4, 5, 6)

#fun��o assign, cria um objeto com nome x e seus valores
assign("x", c(4.2, 1, 5)) 

# c concatena 
x = c(4,5,6)

#ponto e v�rgula indica uma nova linha de c�digo
x = c(4,5,6); x 

#Veja quais objetos j� foram criados
ls()
#ou
objects()

#Removendo objetos
rm("x")

#Trabalhando com vetores
x = c(y, 5, y)
x

#Soma e ra�zes
sum(x)
sqrt(x)

#Valores em uma determinada posi��o dentro do vetor
x[1]

#Compara��o com valores originais
newobject <- x < 5; newobject
x

##Tipos de colchetes

#() colchetes como padr�o

#[] colchetes para posi��es de �ndice

#{} colchetes para fun��es e loops

#Operadores matem�ticos: +, -, *, /, ^ou**, %%(mod),
#%/%(divis�o de double para int)

#Operadores l�gicos: <, >, <=, >=, ==, !=, |, &,
#TRUE(x)(testa se x � verdadeiro)





### Fun��es: seq, colar, representante

# come�ando com a fun��o seq
? seq 

# apenas usando as configura��es padr�o
seq () 

#seu tipo
class(seq())

#sequencia de 3 a 5
seq(3, 5)
#ou
seq(from = 3, to = 5)

# usando length
seq(from = 3, length = 3)

#manipula��es
seq(from = 3, length = 3, by = 0.5)

#tracando a ordem
seq(from = 3, by = 0.5, length = 3) 


#proxima
?paste

#pad�o
paste()

paste(1:4)

#checando a classe
class(paste(1:4))

paste("xyz", 1:10)

#vetor aleat�rio com n�meros e caracteres
paste("xyz", c(2,5,7,"test", 4.5)) 

#modificando o separador
paste("xyz", 1:10, sep = "") 


#proxima
?rep

#padr�o
rep()

#chacando a classe
class(rep())

rep(c(3,4,5), 3)

rep(1:10, times = 3)

#criando x
x = c (1,2,3) 

#usando cada
rep (x, each = 3) 

#combinando argumentos
rep (x, each = 3, times = 3) 

##Trabalhando com posi��es de �ndice
# nossos dados
x = 4:20 

# duplo sinal de igual, opera��o l�gica
which (x == 10) 
x [3]

  


### Fun��es em R


# Breve descri��o: Fun��es R s�o OBJETOS
# Eles fazem c�lculos
# R estrutura da fun��o: nome <- fun��o (argumento) {declara��es}
# Os argumentos especificam os componentes a serem utilizados na fun��o

firstfn <- function (x) {x + x}
firstfn (10)

# fun��es de trabalho em etapas

mysecondfn <- function (t, z) {
  valor = z * 3
  valor = valor * t
  print (valor)}
t = 5
z = 9
secondfn (t, z)

## Loops - loops e fun��es s�o uma parte crucial da programa��o

#Os loops FOR permitem que uma determinada opera��o seja repetida um n�mero fixo de vezes
# Isso se op�e ao loop While, em que o representante nr n�o � prefixado
# A sintaxe � assim: for (nome em vetor) {comandos}

for (i in 1:15) {print (i)}
for (z in 1:15) {print (z)}

# nome da vari�vel n�o importa, embora voc� veja muitas vezes

# Pode ser usado para c�lculos bastante complexos
# Exemplo de c�lculo de n�meros primos com o m�todo Erat�stenes (o m�todo sistem�tico mais antigo conhecido)

PrimVec = function (n) {
  # para come�ar a partir de 2
  if (n >= 2) {
    # para especificar melhor a sequ�ncia com a qual queremos trabalhar
    s = seq (2, n)
    # p ser� o cont�iner para nossos primos,
    # n�meros ser�o movidos de s para p passo a passo se atenderem aos crit�rios
    p = c ()
    # iniciamos o loop
    for (i in seq (2, n)) {
      
      # usamos any para verificar se i (desta rodada de loop) ainda est� em s, m�ltiplos de i ser�o removidos
      if (any (s == i)) {
        # armazenamos i se ele atender aos nossos crit�rios em p, juntamente com o p anterior
        p = c (p, i)
        # para procurar n�meros com um restante na divis�o do m�dulo
        s = c (s [(s %% i) != 0], i)
      }
    }
    return (p)}
  # para especificar a sa�da se n <2 (opcional)
  else{
    stop ("Insira pelo menos 2")
  }
}
PrimVec (100)



### Trabalhando com data.frames

?airmiles
#primeiras 6 linhas
head(airmiles)

#�ltimas 6 linhas
tail(airmiles) 

summary(mtcars)

plot(mtcars) # fun��o de plot xy simples do R Base

hist(airmiles) #histograma

head(mtcars)

sum(mtcars$wt)

attach(mtcars) # anexar ao ambiente da sess�o R

sum(wt) # agora R sabe qual data.frame usar, pois est� anexado

detach(mtcars) # remova-o do ambiente

sum(wt) # mensagem de erro, j� que o mtcars n�o anexou mais

mtcars[2,6] # [x, y]

mtcars[c (2,5,8), 6]






### Gr�ficos na base R

# 3 principais sistemas de dados:
# ggplot2, ret�culo e base R

# simple scatterplot

x = 5: 7 # 3 pontos de dados, n�meros inteiros
y = 8: 10

# sa�da padr�o da plotagem aqui � um gr�fico de dispers�o
plot(x, y)

# data � uma s�rie temporal, o padr�o � um gr�fico de linhas
plot(lynx)

# t�tulo, cor, cor do t�tulo, amplia��o do t�tulo
plot(lynx, main="Lynx Trappings", col="red",
     col.main=52, cex.main=1.5)

# nomes de etiquetas
plot(lynx, ylab = "Trapings do lince", xlab = "")

# orienta��o da etiqueta
plot(lynx, ylab = "Trapings do lince", xlab = "", las = 2)

# las - 0: 3, orienta��o da escala

# alterando o par�metro de sess�o, matriz de plotagem 2 * 2
par (mfrow = c (2,2), col.axis = "red")

plot (1: 8, las = 0, xlab = "xlab", ylab = "ylab", main = "LAS = 0")
plot (1: 8, las = 1, xlab = "xlab", ylab = "ylab", main = "LAS = 1")
plot (1: 8, las = 2, xlab = "xlab", ylab = "ylab", main = "LAS = 2")
plot (1: 8, las = 3, xlab = "xlab", ylab = "ylab", main = "LAS = 3")

rm ('x', 'y')

# manipula��o de cores

colors()

# tipos de s�mbolos de ponto

?pch

x = 2: 4

plot(x, pch = "c") # usando letras como s�mbolos de ponto
plot (x, pch = 13) # s�mbolo n� 13

# Tipos de linha

par(mfrow = c (1,1), col.axis = "black") # # definindo os par�metros de volta ao padr�o

library(plotrix) # add no pacote para "ablineclip", instale se ainda n�o estiver dispon�vel

plot(1: 7, ylab = "", main = "Tipos de linhas lty 0: 6", xlab = "lty 0: 6") # plot de teste

ablineclip(v = 1, lty = 1, col = "sienna2", lwd = 2) # s�lido (padr�o)
ablineclip(v = 2, lty = 2, col = "sienna2", lwd = 2) # tracejado
ablineclip(v = 3, lty = 3, col = "sienna2", lwd = 2) # pontilhado
ablineclip(v = 4, lty = 4, col = "sienna2", lwd = 2) # dotdash
ablineclip(v = 5, lty = 5, col = "sienna2", lwd = 2) # longdash
ablineclip(v = 6, lty = 6, col = "sienna2", lwd = 5) # twodash, mais grosso para compara��o
ablineclip(v = 7, lty = 0, col = "sienna2", lwd = 2) # em branco

# tipos de plotagem de plotagem de base R

?plot

# usando "type", podemos especificar que tipo de plotagem queremos

plot(lynx) # plot para dados de s�ries temporais

plot(lynx, type = "p", main = "Tipo p") # pontos (padr�o)
plot(lynx, type = "l", main = "tipo l") # linhas (padr�o para s�ries temporais)
plot(lynx, type = "b", main = "Tipo b") # pontos conectados por linhas
plot(lynx, type = "c", main = "Tipo c") # linhas apenas de b
plot(lynx, type = "o", main = "tipo o") # pontos sobrepostos por linhas
plot(lynx, type = "h", main = "tipo h") # alta densidade
plot(lynx, type = "s", main = "tipo s") # passos
plot(lynx, type = "n", main = "tipo n") # sem plot

# Exemplo: plotagem de linha avan�ada com R Base

par(mar = c (4,3,3,3), col.axis = "darkgreen") # altera��o das margens da plotagem

plot(cars$speed, type = "s", col = "red", bty = "n", xlab = "ID de carros", ylab = "")
text(8, 14, "Velocidade em mph", cex = 0,85, col = "red") # adicionando o texto explicativo � plotagem 1

par(new = T) # permite plotagem 2 em 1

plot (cars$dist, type = "s", bty = "n", ann = F, axes = F, col = "darkblue")
axis (side = 4, col = "darkblue") # y eixo para o gr�fico 2
text (37, 18, "Dist�ncia de parada em p�s", cex = 0,85, col = "darkblue") # explica��es para o gr�fico 2
title (main = "Velocidade e paradas \ n Dist�ncias de carros") # main title

# ??? par�metros gr�ficos
?par

par()