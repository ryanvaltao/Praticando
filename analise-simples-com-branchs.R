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

#preencher na branch analise graficos
#usar comandos de distribuicao de frequencia de sexo, grafico de colunas para 
#faixa etaria por sexo, hist de altura, box plot de imc por sexo

#-=-=-=analise descritiva com medidas descritivas=-=-=-

#-=-=-=idade=-=-=-
min_idade = min(dados$idade)
max_idade = max(dados$idade)
mediana_idade = median(dados$idade)
media_idade = mean(dados$idade)
desvio_idade = sd(dados$idade)

#-=-=-=altura=-=-=-
min_altura = min(dados$altura)
max_altura = max(dados$altura)
mediana_altura = median(dados$altura)
media_altura = mean(dados$altura)
desvio_altura = sd(dados$altura)

#-=-=-=peso=-=-=-
min_peso = min(dados$peso)
max_peso = max(dados$peso)
mediana_peso = median(dados$peso)
media_peso = mean(dados$peso)
desvio_peso = sd(dados$peso)

#-=-=-=imc=-=-=-
min_imc = min(dados$imc)
max_imc = max(dados$imc)
mediana_imc = median(dados$imc)
media_imc = mean(dados$imc)
desvio_imc = sd(dados$imc)

