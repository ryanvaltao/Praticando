# Script referente a aula prática de 30/03 de Git e GitHub, vinculado ao projeto Praticando

# Leitura do banco de dados
Dados = read.csv("dados - respostas formulário.csv", header=T, sep=";")
attach(Dados)
library(usethis)
 
str(Dados)

# Análises descritivas - variáveis qualitativas
prop.table(table( ingresso))
prop.table(table(sexo))
prop.table(table(grupo_sanguineo))
prop.table(table(ingere_pao))
prop.table(table(ingere_massa))
prop.table(table(ingere_refri))
prop.table(table(ingere_alcool))
prop.table(table(fruta_gosta))

# Análises descritivas - variáveis quantitativas
summary(idade)
sd(idade)

summary(peso) 
sd(peso)

summary(n_refeicoes_dia)
sd(n_refeicoes_dia)

# analise frutas

abacaxi = grepl("Abacaxi", fruta_gosta)
prop.table(table(abacaxi))

banana = grepl("Banana", fruta_gosta)
prop.table(table(banana))
