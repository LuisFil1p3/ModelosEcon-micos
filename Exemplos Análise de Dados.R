
#importação dos Dados

install.packages("readr")    # Instala pacote 
library(readr)               # Carrega pacote

# Carrega os Dados de forma mais 'rápida'
Dados <- read.csv("C:/Users/20231enpro0526/Downloads/olimpiadas.csv")

#######################################
# Tabelas de Frequências
#######################################
# Tabelas Simples

table(Dados$Sex) # Valores absolutos

table(Dados$Sex)/nrow(Dados) # Valores Relativos

# Tabela de Dupla Entrada

table(Dados$Sex, Dados$NOC)

# Dados Somente do Brasil

install.packages("dplyr")
library(dplyr)

Dados_Brasil <- Dados %>% filter(NOC == "BRA")

#######################################

# Gráficos

install.packages("esquisse")
library(esquisse)

library(ggplot2)

ggplot(Dados) +
 aes(x = Sex) +
 geom_bar(fill = "#112446") +
 theme_minimal()

#####################################
# Estatísticas Descritivas          #
#####################################

min(Dados$Age, na.rm = TRUE) # Mínimo 
max(Dados$Age, na.rm = TRUE)# Máximo 
mean(Dados$Age, na.rm = TRUE)# Média 
sd(Dados$Age, na.rm = TRUE)# Desvio-padrão


esquisser(Dados)

Dados_F <- Dados %>% filter(Sex == "F")
mean(Dados_F$Weight, na.rm = TRUE)


Dados_M <- Dados %>% filter(Sex == "M")
mean(Dados_M$Weight, na.rm = TRUE)



