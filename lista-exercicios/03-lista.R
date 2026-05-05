# Arquivo: 03-lista.R
# Autor(a): Evelyn C. M. Leal
# Data: 14/04/2026
# Objetivo: Resolução da Lista de Exercícios 3

# Configurações globais --------------------------------------

# Configura o número de dígitos exibidos
options(digits = 5, scipen = 999)

# Carrega os pacotes necessários
library(here)
library(tidyverse)


# Exercício 1 ------------------------------------------------


#Neste exercício, você irá reorganizar uma tabela usando a função pivot_longer().

#DicaDicionário dos dados
#O arquivo receitas_trimestres.csv, usando neste exercício, contém as seguintes variáveis:
  
 ## produto: nome do produto
#T1: receita no primeiro trimestre
#T2: receita no segundo trimestre
#T3: receita no terceiro trimestre
#T4: receita no quarto trimestre
#Baixe o arquivo receitas_trimestres.csv e coloque-o na pasta dados/brutos do seu projeto e, em seguida, faça o seguinte:
  
 ## Importe o arquivo usando here() e read_csv(), salvando-o em um objeto chamado dados_receitas.

#Exiba a estrutura do objeto com glimpse().


## a ----------------------------------------------------

# define o caminho relativo do arquivo
caminho_receitas <- here("dados/brutos/receitas_trimestres.csv")

# importa o arquivo com read_csv
dados_receitas <-  read_csv(caminho_receitas)


## b -----------------------------------------------------
glimpse(dados_receitas)

## c -----------------------------------------------------
#
#Observe a tabela importada e escreva, em comentários no script, por que ela está em formato desorganizado para análise.


### porque os trimestres (T1, T2, T3,T4) são valores da variável trimestre, mas aparecem como nomes de colunas.


## d -----------------------------------------------------

#Use pivot_longer() para transformar a tabela em formato longo.

#A nova tabela deve conter:

# -   uma coluna chamada `trimestre`;
#-   uma coluna chamada `receita`.
#Salve o resultado em um objeto chamado receitas_longas e veja a estrutura com glimpse().

#Visualize o objeto receitas_longas com View().



# Transforma receitas para o formato longo
receitas_longas <- dados_receitas |> 
  pivot_longer(
    cols = c("T1", "T2", "T3", "T4"),
    names_to = "trimestre",
    values_to = "receita"
  )


##  -----------------------------------------------

glimpse(receitas_longas)

# Exercício 2 ------------------------------------------------

#Neste exercício, você irá reorganizar uma tabela em que os nomes das colunas misturam duas informações.

#DicaDicionário dos dados
#O arquivo desempenho-empresa.csv, usado neste exercício, contém as seguintes variáveis:
  
#  empresa: nome da empresa
#receita_T1: receita da empresa no primeiro trimestre
#receita_T2: receita da empresa no segundo trimestre
#despesa_T1: despesa da empresa no primeiro trimestre
#despesa_T2: despesa da empresa no segundo trimestre
#Baixe o arquivo desempenho-empresa.csv e coloque-o na pasta dados/brutos do seu projeto.



## a -------------------------------------------------

#Importe o arquivo usando here() e read_csv(), salvando-o em um objeto chamado dados_desempenho.

#Exiba a estrutura do objeto com glimpse().

## define o caminho relativo do arquivo
caminho_desempenho <- here("dados/brutos/desempenho-empresa.csv")

# importa o arquivo com read_csv
dados_desempenho <- read_csv(caminho_desempenho)

glimpse(dados_desempenho)


## b -----------------------------------------------------


#Observe os nomes das colunas e escreva, em comentários no script, quais duas informações estão misturadas nesses nomes.

### as duas informações misturadas nesses nomes , são Receita e Despesa (T1/T2)



## c ----------------------------------------------------

#Use pivot_longer() para transformar dados_desempenho para o formato longo.

#O novo objeto deve conter as seguintes colunas:
  
#  empresa
#indicador
#trimestre
#valor
#Salve o resultado em um objeto chamado desempenho_longo e veja a estrutura com glimpse(). 

# Transforma receitas para o formato longo

desempenho_longo <- dados_desempenho |> 
  pivot_longer(
    cols = -empresa ,
    names_to =  c("indicador", "trimestre"),
    names_sep = "_" ,
    values_to = "valor"
  )

glimpse(dados_desempenho)




## d

#Visualize o objeto desempenho_longo com View().
View(desempenho_longo)



# Exercício 3 ------------------------------------------------


## a


## b


## c


## d


## e


## f


## g


## h


## i