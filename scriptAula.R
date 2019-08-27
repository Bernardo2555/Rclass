### Funções de R

#configurando uma seed para tornar uma amostra 
#aleatória reproduzível, escolha o número que desejar
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




###Primeiras etapas de codificação

# R como calculadora
4 + 4                        + 5

# Operadores: + - / * ^

#Usando vários operadores e parenteses
(5-3)^3

#Criando objetos
x <- c(4,5,6) # ou 4:6

#setas funcionam para os dois lados
c(4, 5.2, 76) -> y 
#escrever apenas o nome do objeto mostra seu conteudo
y 

#o simbolo = funciona apeans nesse formato, diferente da seta
x = c(4, 5, 6)

#função assign, cria um objeto com nome x e seus valores
assign("x", c(4.2, 1, 5)) 

# c concatena 
x = c(4,5,6)

#ponto e vírgula indica uma nova linha de código
x = c(4,5,6); x 

#Veja quais objetos já foram criados
ls()
#ou
objects()

#Removendo objetos
rm("x")

#Trabalhando com vetores
x = c(y, 5, y)
x

#Soma e raízes
sum(x)
sqrt(x)

#Valores em uma determinada posição dentro do vetor
x[1]

#Comparação com valores originais
newobject <- x < 5; newobject
x

##Tipos de colchetes

#() colchetes como padrão

#[] colchetes para posições de índice

#{} colchetes para funções e loops

#Operadores matemáticos: +, -, *, /, ^ou**, %%(mod),
#%/%(divisão de double para int)

#Operadores lógicos: <, >, <=, >=, ==, !=, |, &,
#TRUE(x)(testa se x é verdadeiro)





### Funções: seq, colar, representante

# começando com a função seq
? seq 

# apenas usando as configurações padrão
seq () 

#seu tipo
class(seq())

#sequencia de 3 a 5
seq(3, 5)
#ou
seq(from = 3, to = 5)

# usando length
seq(from = 3, length = 3)

#manipulações
seq(from = 3, length = 3, by = 0.5)

#tracando a ordem
seq(from = 3, by = 0.5, length = 3) 


#proxima
?paste

#padão
paste()

paste(1:4)

#checando a classe
class(paste(1:4))

paste("xyz", 1:10)

#vetor aleatório com números e caracteres
paste("xyz", c(2,5,7,"test", 4.5)) 

#modificando o separador
paste("xyz", 1:10, sep = "") 


#proxima
?rep

#padrão
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

##Trabalhando com posições de índice
# nossos dados
x = 4:20 

# duplo sinal de igual, operação lógica
which (x == 10) 
x [3]

  


### Funções em R


# Breve descrição: Funções R são OBJETOS
# Eles fazem cálculos
# R estrutura da função: nome <- função (argumento) {declarações}
# Os argumentos especificam os componentes a serem utilizados na função

firstfn <- function (x) {x + x}
firstfn (10)

# funções de trabalho em etapas

mysecondfn <- function (t, z) {
  valor = z * 3
  valor = valor * t
  print (valor)}
t = 5
z = 9
secondfn (t, z)

## Loops - loops e funções são uma parte crucial da programação

#Os loops FOR permitem que uma determinada operação seja repetida um número fixo de vezes
# Isso se opõe ao loop While, em que o representante nr não é prefixado
# A sintaxe é assim: for (nome em vetor) {comandos}

for (i in 1:15) {print (i)}
for (z in 1:15) {print (z)}

# nome da variável não importa, embora você veja muitas vezes

# Pode ser usado para cálculos bastante complexos
# Exemplo de cálculo de números primos com o método Eratóstenes (o método sistemático mais antigo conhecido)

PrimVec = function (n) {
  # para começar a partir de 2
  if (n >= 2) {
    # para especificar melhor a sequência com a qual queremos trabalhar
    s = seq (2, n)
    # p será o contêiner para nossos primos,
    # números serão movidos de s para p passo a passo se atenderem aos critérios
    p = c ()
    # iniciamos o loop
    for (i in seq (2, n)) {
      
      # usamos any para verificar se i (desta rodada de loop) ainda está em s, múltiplos de i serão removidos
      if (any (s == i)) {
        # armazenamos i se ele atender aos nossos critérios em p, juntamente com o p anterior
        p = c (p, i)
        # para procurar números com um restante na divisão do módulo
        s = c (s [(s %% i) != 0], i)
      }
    }
    return (p)}
  # para especificar a saída se n <2 (opcional)
  else{
    stop ("Insira pelo menos 2")
  }
}
PrimVec (100)



### Trabalhando com data.frames

?airmiles
#primeiras 6 linhas
head(airmiles)

#últimas 6 linhas
tail(airmiles) 

summary(mtcars)

plot(mtcars) # função de plot xy simples do R Base

hist(airmiles) #histograma

head(mtcars)

sum(mtcars$wt)

attach(mtcars) # anexar ao ambiente da sessão R

sum(wt) # agora R sabe qual data.frame usar, pois está anexado

detach(mtcars) # remova-o do ambiente

sum(wt) # mensagem de erro, já que o mtcars não anexou mais

mtcars[2,6] # [x, y]

mtcars[c (2,5,8), 6]






### Gráficos na base R

# 3 principais sistemas de dados:
# ggplot2, retículo e base R

# simple scatterplot

x = 5: 7 # 3 pontos de dados, números inteiros
y = 8: 10

# saída padrão da plotagem aqui é um gráfico de dispersão
plot(x, y)

# data é uma série temporal, o padrão é um gráfico de linhas
plot(lynx)

# título, cor, cor do título, ampliação do título
plot(lynx, main="Lynx Trappings", col="red",
     col.main=52, cex.main=1.5)

# nomes de etiquetas
plot(lynx, ylab = "Trapings do lince", xlab = "")

# orientação da etiqueta
plot(lynx, ylab = "Trapings do lince", xlab = "", las = 2)

# las - 0: 3, orientação da escala

# alterando o parâmetro de sessão, matriz de plotagem 2 * 2
par (mfrow = c (2,2), col.axis = "red")

plot (1: 8, las = 0, xlab = "xlab", ylab = "ylab", main = "LAS = 0")
plot (1: 8, las = 1, xlab = "xlab", ylab = "ylab", main = "LAS = 1")
plot (1: 8, las = 2, xlab = "xlab", ylab = "ylab", main = "LAS = 2")
plot (1: 8, las = 3, xlab = "xlab", ylab = "ylab", main = "LAS = 3")

rm ('x', 'y')

# manipulação de cores

colors()

# tipos de símbolos de ponto

?pch

x = 2: 4

plot(x, pch = "c") # usando letras como símbolos de ponto
plot (x, pch = 13) # símbolo nº 13

# Tipos de linha

par(mfrow = c (1,1), col.axis = "black") # # definindo os parâmetros de volta ao padrão

library(plotrix) # add no pacote para "ablineclip", instale se ainda não estiver disponível

plot(1: 7, ylab = "", main = "Tipos de linhas lty 0: 6", xlab = "lty 0: 6") # plot de teste

ablineclip(v = 1, lty = 1, col = "sienna2", lwd = 2) # sólido (padrão)
ablineclip(v = 2, lty = 2, col = "sienna2", lwd = 2) # tracejado
ablineclip(v = 3, lty = 3, col = "sienna2", lwd = 2) # pontilhado
ablineclip(v = 4, lty = 4, col = "sienna2", lwd = 2) # dotdash
ablineclip(v = 5, lty = 5, col = "sienna2", lwd = 2) # longdash
ablineclip(v = 6, lty = 6, col = "sienna2", lwd = 5) # twodash, mais grosso para comparação
ablineclip(v = 7, lty = 0, col = "sienna2", lwd = 2) # em branco

# tipos de plotagem de plotagem de base R

?plot

# usando "type", podemos especificar que tipo de plotagem queremos

plot(lynx) # plot para dados de séries temporais

plot(lynx, type = "p", main = "Tipo p") # pontos (padrão)
plot(lynx, type = "l", main = "tipo l") # linhas (padrão para séries temporais)
plot(lynx, type = "b", main = "Tipo b") # pontos conectados por linhas
plot(lynx, type = "c", main = "Tipo c") # linhas apenas de b
plot(lynx, type = "o", main = "tipo o") # pontos sobrepostos por linhas
plot(lynx, type = "h", main = "tipo h") # alta densidade
plot(lynx, type = "s", main = "tipo s") # passos
plot(lynx, type = "n", main = "tipo n") # sem plot

# Exemplo: plotagem de linha avançada com R Base

par(mar = c (4,3,3,3), col.axis = "darkgreen") # alteração das margens da plotagem

plot(cars$speed, type = "s", col = "red", bty = "n", xlab = "ID de carros", ylab = "")
text(8, 14, "Velocidade em mph", cex = 0,85, col = "red") # adicionando o texto explicativo à plotagem 1

par(new = T) # permite plotagem 2 em 1

plot (cars$dist, type = "s", bty = "n", ann = F, axes = F, col = "darkblue")
axis (side = 4, col = "darkblue") # y eixo para o gráfico 2
text (37, 18, "Distância de parada em pés", cex = 0,85, col = "darkblue") # explicações para o gráfico 2
title (main = "Velocidade e paradas \ n Distâncias de carros") # main title

# ??? parâmetros gráficos
?par

par()