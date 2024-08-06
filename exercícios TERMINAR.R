install.packages("wooldridge")
library(wooldridge)

Dados_c1 <- wage1

?wage1
# Escolaridade Média c1(i)
mean(Dados_c1$educ, na.rm = TRUE)
min(Dados_c1$educ, na.rm = TRUE) # Mínimo 
max(Dados_c1$educ, na.rm = TRUE)# Máximo 


library(dplyr)
# Salário-hora Média(ii)
mean(Dados_c1$wage, na.rm = TRUE)



install.packages("esquisse")
library(esquisse)

esquisser(Dados_c1)
# Quantas mulheres(v) 
table(Dados_c1$female)

# Quantos Homens
274

########################################
# Questão 2
########################################
Dados_c2 <- bwght

?bwght

table(Dados_c2$cigs)

# Quantas mulheres (i) 
mean(Dados_c2$cigs, na.rm = TRUE)

1388 - 1176
= 212       # mulheres que fumam durante a Gravidez

# Média cigarros p/ dia (ii)

dados_fumam <- Dados_c2 %>% filter(cigs > 0)

mean(dados_fumam$cigs, na.rm = TRUE)

# Média rendda familiar (v) 
mean(Dados_c2$faminc, na.rm = TRUE)

# Desvio Padrão em dólares
sd(Dados_c2$faminc, na.rm = TRUE)

18.73928 * 5.65 = 105.8769 # Em Dólares


##########################################
# Questão 3 (C5)
##########################################
Dados_c3 <- fertil2

?fertil2

# Crianças maximo(i)
max(Dados_c3$children, na.rm = TRUE)

# Crianças mínimo
min(Dados_c3$children, na.rm = TRUE)

#Média de crianças
mean(Dados_c3$children, na.rm = TRUE)










