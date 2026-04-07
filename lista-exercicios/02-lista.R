# Arquivo: 02-lista.R
# Autor(a): Evelyn Cristine Marçal Leal
# Data: <06/04/2026>
# Objetivo:
# 1. Resolver os exercícios da lista 2


# Configurações globais ---------------------------------------------------

# Configura o número de dígitos a serem exibidos
options(digits = 5, scipen = 999)


# Exercicio 1 -------------------------------------------------------------


## a)carregar os pacotes necessários

library(here) # para usar caminhos relativos
library(tidyverse) # carrega o dplyr, readr, ggplot2, etc.
library(janitor) # para limpar os nomes das colunas



## b) Aquisição dos dados ----------------------------------------------------

# define o caminho relativo do arquivo de dados
caminho_csv <- here("dados/brutos/dados-marketing.csv")

# importa o arquivo usando a função read_csv do pacote readr
dados_marketing <- read_csv(caminho_csv)


## c) executar glimpse

glimpse(dados_marketing)



# Exercicio 2 -------------------------------------------------------------


## a)o que cada linha (observação) do arquivo representa?

### Informações sobre atividades exercidas pelo marketing


## b)quantas observações e quantas variáveis há no objeto dados_marketing?

### 9 informações e 156 variáveis


# Exercicio 3 -------------------------------------------------------------


## a)Use clean_names() para padronizar os nomes das colunas e crie um novo objeto chamado dados_marketing_limpos 
## a partir de dados_marketing.

### 
dados_marketing_limpos <- dados_marketing |>

clean_names() 




## b)escreva e execute names(dados_marketing_limpos) e verifique os novos nomes das variáveis/colunas.

###
names(dados_marketing_limpos)



# Exercicio 4 -------------------------------------------------------------

#Utilizando o objeto dados_marketing_limpos, use a função select do dplyr 
#para criar um pipeline (sequência de operações) que mostre apenas as seguintes variáveis:
  
#  data
#mes
#gasto_tv
#gasto_radio
#promocao
#receita_vendas

###

dados_marketing_limpos |> 
 select(data, mes, gasto_tv, gasto_radio, promocao, receita_vendas)



# Exercicio 5 -------------------------------------------------------------


#Use mutate() para criar uma nova variável chamada gasto_total
#no objeto dados_marketing_limpos, correspondente à soma dos gastos com:
  
#  gasto_tv
#gasto_radio
#gasto_redes_sociais
#gasto_email
#Depois, exiba as colunas data, mes, gasto_total e receita_vendas.

#Em seguida, escreva e execute View(dados_marketing_limpos) para visualizar o objeto com a nova variável criada.


mutate(gasto_total = gasto_tv + gasto_radio + gasto_redes_sociais + gasto_email) |> 
 select(data, mes, gasto_total, receita_vendas) |> 
# Exercicio 6 -------------------------------------------------------------




# Exercicio 7 -------------------------------------------------------------




# Exercicio 8 -------------------------------------------------------------





# Exercicio 9 -------------------------------------------------------------