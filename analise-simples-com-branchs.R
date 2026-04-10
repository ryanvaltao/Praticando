#script aula 7 praticando uso de branchs

#-=-=-=leitura e manipulação de dados limpos=-=-=-
dados = read.csv("dados-aula-7-limpo.csv", header=TRUE,sep=",")

#-=-=-=vendo estrutura=-=-=-
str(dados)
head(dados)

#-=-=-=calculo imc=-=-=-
dados$imc = dados$peso / ((dados$altura/100)^2)
View(dados)
dados$imc = round(dados$imc, 0) #quis arredondar as casas decimais

#-=-=-=faixa etaria=-=-=-
dados$faixa_etaria = ifelse(dados$idade < 30, "jovem",
                            ifelse(dados$idade < 60, "adulto","idoso"))
dados$faixa_etaria = factor(dados$faixa_etaria)

#-=-=-=analise descritiva com distribuição de frequencias e com graficos=-=-=-

table(dados$sexo) 
barplot(table(dados$faixa_etaria, dados$sexo), beside = TRUE, legend = TRUE )
hist(dados$altura)
boxplot(dados$imc ~ dados$sexo)
        
#-=-=-=analise descritiva com medidas descritivas=-=-=-

#preencher na branch analise medidas
#usar comandos de calculo de minimo, maximo, media, mediana e
#desvio padrao para idade, altura, peso e imc
