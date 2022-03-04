###########  cascata hepatite C - população geral do Brasil ########
####################################################################
###### script desenvolvido por Mikael Lemos ########################
###### versão 1.0 - 18.02.2022 #####################################
####################################################################

######
### Carregando / instalando pacotes
######

library('plyr')

#install.packages('dplyr')
library('dplyr')

#install.packages("tidyr")
library('tidyr')

#install.packages("data.table")
library('data.table')

#install.packages('stringr')
library('stringr')

# install.packages("tidyverse")
library("tidyverse")

# install.packages("lubridate")
library("lubridate")

#install.packages("Amelia")
library("Amelia")

#install.packages('microbenchmark')
library("microbenchmark")

#install.packages('ggplot2movies')
library("ggplot2movies")

#install.packages('profvis')
library("profvis")

#install.packages('Rcpp')
library("Rcpp")

#install.packages('compiler')
library("compiler")

#install.packages('memoise')
library("memoise")

#install.packages('DiagrammeR')
library("DiagrammeR")

#install.packages('rio')
library("rio")

#install.packages('readr')
library("readr")

#install.packages('data.table')
library("data.table")

#install.packages('feather')
library("feather")

#install.packages('WDI')
library("WDI")

#install.packages('eeptools')
library("eeptools")

#install.packages("waffle")
library("waffle")

#install.packages("ggthemes")
library("ggthemes")

#install.packages("waffle")
library("waffle")

#install.packages("plotly")
library("plotly")

library("stringr")

library("ggplot2")

library(RColorBrewer)

#install.packages("pryr")
library(pryr)
#install.packages("openxlsx")
library("openxlsx")

#install.packages("diyar")
library("diyar")

#install.packages('gtools')
library(gtools)

library(scales)

#install.packages("read.dbc")
library(read.dbc)

#####################
######## Infectados # 1a Barra - Projeção da população do Brasil do ano analisado (IBGE) X prevalência de HCV-RNA(2016) = 0,31% - artigo de 2019
####################        
# 2018 - População em 2015
# número estimado de infectados - HCV - prevalência HCV-RNA - Resultado = 648.881 pessoas HCV-RNA+    

n_estimado_infectados_hcv_RNA_2015 <- round(204450649 * 0.0031, digits = 0)

# 2018 - População em 2016
# número estimado de infectados - HCV - prevalência HCV-RNA - Resultado = 648.881 pessoas HCV-RNA+    

n_estimado_infectados_hcv_RNA_2016 <- round(206081432 * 0.0031, digits = 0)

# 2018 - População em 2017
# número estimado de infectados - HCV - prevalência HCV-RNA - Resultado = 648.881 pessoas HCV-RNA+    

n_estimado_infectados_hcv_RNA_2017 <- round(207660929 * 0.0031, digits = 0)

# 2018 - População em 2018
# número estimado de infectados - HCV - prevalência HCV-RNA - Resultado = 648.881 pessoas HCV-RNA+    

n_estimado_infectados_hcv_RNA_2018 <- round(209186802 * 0.0031, digits = 0)

# 2019 - População em 2019
# número estimado de infectados - HCV - prevalência HCV-RNA - Resultado = 648.881 pessoas HCV-RNA+    

n_estimado_infectados_hcv_RNA_2019 <- round(210659013 * 0.0031, digits = 0)

# 2020 - População em 1/1/2020
# número estimado de infectados - HCV - prevalência HCV-RNA - Resultado = 648.881 pessoas HCV-RNA+    

n_estimado_infectados_hcv_RNA_2020 <- round(212077375 * 0.0031, digits = 0)

#####################
######## Diagnosticados - GAL (PCR - RNA) ,-diagnosticados apenas por sorologia 
####################

# 2016 - GAL

### Encontrar e definir o wd (working directory)

setwd("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/GAL_2016_HCV_RNA/csv")

# Carregar arquivos 

file_names <- dir("./") #where you have your files

##############
#### GAL 2016 
##############

GAL_2016 <- do.call(smartbind,lapply(file_names,read.csv,head = TRUE, sep=";" ))

# HCV-RNA
GAL_2016_HCV_RNA <- filter(GAL_2016, Exame == "Hepatite C, Pesquisa quantitativa do RNA HCV" )

GAL_2016_HCV_RNA_positivo <- filter(GAL_2016_HCV_RNA, Resultado == "Detectavel" | Resultado == "Acima do limite de quantificacao" )

GAL_2016_HCV_RNA_positivo$tp_resultado <- "positivo"

## Salvando tabelas intermediárias

write.csv(GAL_2016_HCV_RNA, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2016_HCV_RNA.csv")

write.csv(GAL_2016_HCV_RNA_positivo, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2016_HCV_RNA_positivo.csv")

# 2017 - GAL

### Encontrar e definir o wd (working directory)

setwd("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/GAL_2017_HCV_RNA/csv")

# Carregar arquivos 

file_names <- dir("./") #where you have your files

##############
#### GAL 2017 
##############

GAL_2017 <- do.call(smartbind,lapply(file_names,read.csv,head = TRUE, sep=";" ))

# HCV-RNA
GAL_2017_HCV_RNA <- filter(GAL_2017, Exame == "Hepatite C, Pesquisa quantitativa do RNA HCV" )

GAL_2017_HCV_RNA_positivo <- filter(GAL_2017_HCV_RNA, Resultado == "Detectavel" | Resultado == "Acima do limite de quantificacao" )

GAL_2017_HCV_RNA_positivo$tp_resultado <- "positivo"

## Salvando tabelas intermediárias

write.csv(GAL_2017_HCV_RNA, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2017_HCV_RNA.csv")

write.csv(GAL_2017_HCV_RNA_positivo, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2017_HCV_RNA_positivo.csv")

# 2018 - GAL

### Encontrar e definir o wd (working directory)

setwd("C:/Users/lemos/Downloads/HEPATITES/BANCOS/GAL2018_hepc_completo/n0/n0_x/")

# Carregar arquivos 

file_names <- dir("./") #where you have your files

##############
#### GAL 2018 
##############

GAL_2018 <- do.call(smartbind,lapply(file_names,read.csv,head = TRUE, sep=";" ))

# HCV-RNA
GAL_2018_HCV_RNA <- filter(GAL_2018, Exame == "Hepatite C, Pesquisa quantitativa do RNA HCV" )

GAL_2018_HCV_RNA_positivo <- filter(GAL_2018_HCV_RNA, Resultado == "Detectavel" | Resultado == "Acima do limite de quantificacao" )

GAL_2018_HCV_RNA_positivo$tp_resultado <- "positivo"

## Salvando tabelas intermediárias
 
write.csv(GAL_2018_HCV_RNA, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2018_HCV_RNA.csv")

GAL_2018_HCV_RNA <- read.csv("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2018_HCV_RNA.csv")

write.csv(GAL_2018_HCV_RNA_positivo, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2018_HCV_RNA_positivo.csv")

GAL_2018_HCV_RNA_positivo <- read.csv("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2018_HCV_RNA_positivo.csv")

# 2019 - GAL

### Encontrar e definir o wd (working directory)

setwd("C:/Users/lemos/Downloads/HEPATITES/BANCOS/GAL2019_hepc_completo/n0/n0_x/")

# Carregar arquivos 

file_names <- dir("./") #where you have your files

##############
#### GAL 2019 
##############

GAL_2019 <- do.call(smartbind,lapply(file_names,read.csv,head = TRUE, sep=";" ))

# HCV-RNA
GAL_2019_HCV_RNA <- filter(GAL_2019, Exame == "Hepatite C, Pesquisa quantitativa do RNA HCV" )

GAL_2019_HCV_RNA_positivo <- filter(GAL_2019_HCV_RNA, Resultado == "Detectavel" | Resultado == "Acima do limite de quantificacao" )

GAL_2019_HCV_RNA_positivo$tp_resultado <- "positivo"

## Salvando tabelas intermediárias

write.csv(GAL_2019_HCV_RNA, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2019_HCV_RNA.csv")

GAL_2019_HCV_RNA <- read.csv( "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2019_HCV_RNA.csv")

write.csv(GAL_2019_HCV_RNA_positivo, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2019_HCV_RNA_positivo.csv")

GAL_2019_HCV_RNA_positivo <- read.csv("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2019_HCV_RNA_positivo.csv")

# 2020 - GAL

### Encontrar e definir o wd (working directory)

setwd("C:/Users/lemos/Downloads/HEPATITES/BANCOS/GAL2020_hepc_completo/n0/n0_x/")

# Carregar arquivos 

file_names <- dir("./") #where you have your files

##############
#### GAL 2020 
##############

GAL_2020 <- do.call(smartbind,lapply(file_names,read.csv,head = TRUE, sep=";" ))

# HCV-RNA
GAL_2020_HCV_RNA <- filter(GAL_2020, Exame == "Hepatite C, Pesquisa quantitativa do RNA HCV" )

GAL_2020_HCV_RNA_positivo <- filter(GAL_2020_HCV_RNA, Resultado == "Detectavel" | Resultado == "Acima do limite de quantificacao" )

GAL_2020_HCV_RNA_positivo$tp_resultado <- "positivo"

## Salvando tabelas intermediárias

write.csv(GAL_2020_HCV_RNA, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2020_HCV_RNA.csv")

GAL_2020_HCV_RNA <- read.csv("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2020_HCV_RNA.csv")

write.csv(GAL_2020_HCV_RNA_positivo, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2020_HCV_RNA_positivo.csv")

GAL_2020_HCV_RNA_positivo <- read.csv( "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/GAL_2020_HCV_RNA_positivo.csv")

####################
######## Tratados   - tratamentos de hepatite C - anos de 2018 e 2020, - anos anteriores , -óbitos (AP_OBITO)
####################

setwd("C:/Users/lemos/Downloads/AMA/DEMANDAS/nana_geno/tabwin_2014/")

# Carregar arquivos 

file_names <- dir("./") #where you have your files

br_tabwin_am_2014 <- rbindlist(lapply(file_names, read.dbc) , fill = TRUE)
BR_med_2014_CID_hepc <- filter(br_tabwin_am_2014, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

write.csv(BR_med_2014_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2014_CID_hepc.csv")

BR_med_2014_CID_hepc$AP_NATJUR <- ""

br_tabwin_am_2015 <- read.csv("G:/Meu Drive/APAC_TABWIN_medicamentos_AMA_2015_2020/br_tabwin_am_2015.csv")
BR_med_2015_CID_hepc <- filter(br_tabwin_am_2015, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

BR_med_2015_CID_hepc$AP_NATJUR <- ""

write.csv(BR_med_2015_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2015_CID_hepc.csv")

br_tabwin_am_2016 <- read.csv("G:/Meu Drive/APAC_TABWIN_medicamentos_AMA_2015_2020/br_tabwin_am_2016.csv")
BR_med_2016_CID_hepc <- filter(br_tabwin_am_2016, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

write.csv(BR_med_2016_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2016_CID_hepc.csv")

br_tabwin_am_2017 <- read.csv("G:/Meu Drive/APAC_TABWIN_medicamentos_AMA_2015_2020/br_tabwin_am_2017.csv")
BR_med_2017_CID_hepc <- filter(br_tabwin_am_2017, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

write.csv(BR_med_2017_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2017_CID_hepc.csv")

br_tabwin_am_2018 <- read.csv("G:/Meu Drive/APAC_TABWIN_medicamentos_AMA_2015_2020/br_tabwin_am_2018.csv")
BR_med_2018_CID_hepc <- filter(br_tabwin_am_2018, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

write.csv(BR_med_2018_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2018_CID_hepc.csv")

br_tabwin_am_2019 <- read.csv("G:/Meu Drive/APAC_TABWIN_medicamentos_AMA_2015_2020/br_tabwin_am_2019.csv")
BR_med_2019_CID_hepc <- filter(br_tabwin_am_2019, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

write.csv(BR_med_2019_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2019_CID_hepc.csv")

br_tabwin_am_2020 <- read.csv("G:/Meu Drive/APAC_TABWIN_medicamentos_AMA_2015_2020/br_tabwin_am_2020.csv")
BR_med_2020_CID_hepc <- filter(br_tabwin_am_2020, AP_CIDPRI == "B182" | AP_CIDPRI == "B171" )

write.csv(BR_med_2020_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2020_CID_hepc.csv")

# Carregar arquivos de tratamentos de hep C 2014 - 2020

BR_med_2014_CID_hepc <- read.csv("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2014_CID_hepc.csv")

BR_med_2015_CID_hepc <- read.csv("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2015_CID_hepc.csv")

BR_med_2015_CID_hepc <- select(BR_med_2015_CID_hepc, -X.1)

BR_med_2016_CID_hepc <- read.csv("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2016_CID_hepc.csv")

BR_med_2016_CID_hepc <- select(BR_med_2016_CID_hepc, -X.1)

BR_med_2017_CID_hepc <- read.csv("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2017_CID_hepc.csv")

BR_med_2017_CID_hepc <- select(BR_med_2017_CID_hepc, -X.1)

BR_med_2018_CID_hepc <- read.csv("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2018_CID_hepc.csv")

BR_med_2018_CID_hepc <- select(BR_med_2018_CID_hepc, -X.1)

BR_med_2019_CID_hepc <- read.csv("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2019_CID_hepc.csv")

BR_med_2019_CID_hepc <- select(BR_med_2019_CID_hepc, -X.1)

BR_med_2020_CID_hepc <- read.csv("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2020_CID_hepc.csv")

BR_med_2020_CID_hepc <- select(BR_med_2020_CID_hepc, -X.1)

# 2015-2016

BR_med_2015_2016_CID_hepc <- do.call("rbind", list(BR_med_2015_CID_hepc, BR_med_2016_CID_hepc))

write.csv(BR_med_2015_2016_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2015_2016_CID_hepc.csv")


## 2015-2017

BR_med_2015_2017_CID_hepc <- do.call("rbind", list(BR_med_2015_CID_hepc, BR_med_2016_CID_hepc, BR_med_2017_CID_hepc))

write.csv(BR_med_2015_2017_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2015_2017_CID_hepc.csv")

BR_med_2015_2017_CID_hepc <- read.csv( "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2015_2017_CID_hepc.csv")

## 2015-2018

BR_med_2015_2018_CID_hepc <- do.call("rbind", list(BR_med_2015_2017_CID_hepc, BR_med_2018_CID_hepc))

write.csv(BR_med_2015_2018_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2015_2018_CID_hepc.csv")

## 2015-2019

BR_med_2015_2019_CID_hepc <- do.call("rbind", list(BR_med_2015_2018_CID_hepc, BR_med_2019_CID_hepc))

write.csv(BR_med_2015_2019_CID_hepc, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2015_2019_CID_hepc.csv")

## Tratamentos excluindo pessoas tratadas nos anos anteriores - tratamentos por ano

##########
#### 2015 
#########

BR_med_2015_antijoin <- anti_join(BR_med_2015_CID_hepc, BR_med_2014_CID_hepc,  by="AP_CNSPCN")

BR_med_2015_antijoin_un <- distinct(BR_med_2015_antijoin, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_med_2015_antijoin_un, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2017_antijoin_un.csv")

BR_med_2015_antijoin_un <- read.csv("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2017_antijoin_un.csv")


##########
#### 2016 
#########

BR_med_2016_antijoin <- anti_join(BR_med_2016_CID_hepc, BR_med_2015_CID_hepc,  by="AP_CNSPCN")

BR_med_2016_antijoin_un <- distinct(BR_med_2016_antijoin, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_med_2016_antijoin_un, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2016_antijoin_un.csv")

BR_med_2016_antijoin_un <- read.csv("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2016_antijoin_un.csv")

##########
#### 2017 
#########

BR_med_2017_antijoin <- anti_join(BR_med_2017_CID_hepc, BR_med_2015_2016_CID_hepc,  by="AP_CNSPCN")

BR_med_2017_antijoin_un <- distinct(BR_med_2017_antijoin, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_med_2017_antijoin_un, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2017_antijoin_un.csv")

##########
#### 2018 
#########

BR_med_2018_antijoin <- anti_join(BR_med_2018_CID_hepc, BR_med_2015_2017_CID_hepc,  by="AP_CNSPCN")

BR_med_2018_antijoin_un <- distinct(BR_med_2018_antijoin, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_med_2018_antijoin_un, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2018_antijoin_un.csv")

##########
#### 2019 
#########

BR_med_2019_antijoin <- anti_join(BR_med_2019_CID_hepc, BR_med_2015_2018_CID_hepc,  by="AP_CNSPCN")

BR_med_2019_antijoin_un <- distinct(BR_med_2019_antijoin, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_med_2019_antijoin_un, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2019_antijoin_un.csv")

##########
#### 2020
#########

BR_med_2020_antijoin <- anti_join(BR_med_2020_CID_hepc, BR_med_2015_2019_CID_hepc,  by="AP_CNSPCN")

BR_med_2020_antijoin_un <- distinct(BR_med_2020_antijoin, AP_CNSPCN , .keep_all = TRUE)

write.csv(BR_med_2020_antijoin_un, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/BR_med_2020_antijoin_un.csv")

####################
######## Curados   - tratamentos de hepatite C - anos de 2016 a 2020, - anos anteriores x GAL (PCR - RNA) ,-diagnosticados apenas por sorologia 
####################

#########
### 2016
########

## Preparando dataframes para comparação de indivíduos dos grupos "tratados"  (APAC/SIA)  X "Diagnosticados"  (HCV-RNA negativo) = "Curados"    

## Tratados (SIA/APAC)

tratados_2016 <- select(BR_med_2016_antijoin_un, AP_NUIDADE, AP_SEXO, AP_RACACOR, AP_MUNPCN)

tratados_2016$AP_RACACOR[tratados_2016$AP_RACACOR == 1] <- "BRANCA"
tratados_2016$AP_RACACOR[tratados_2016$AP_RACACOR == 2] <- "PRETA"
tratados_2016$AP_RACACOR[tratados_2016$AP_RACACOR == 3] <- "PARDA"
tratados_2016$AP_RACACOR[tratados_2016$AP_RACACOR == 4] <- "AMARELA"
tratados_2016$AP_RACACOR[tratados_2016$AP_RACACOR == 5] <- "INDIGENA"
tratados_2016$AP_RACACOR[tratados_2016$AP_RACACOR == 99] <- "IGNORADO"

tratados_2016 <- select(tratados_2016, "Idade" = "AP_NUIDADE","Sexo" = "AP_SEXO", "Raça.Cor" = "AP_RACACOR",  "IBGE.Município.de.Residência" = "AP_MUNPCN")

tratados_2016$data_source <- "tratados_2016"

## Diagnosticados (GAL)

GAL_2016_HCV_RNA_negativo <- filter(GAL_2016_HCV_RNA, Resultado=="Nao Detectavel"| Resultado=="Abaixo do limite de quantificacao")

diagnosticados_2016 <- select(GAL_2016_HCV_RNA_negativo, Idade, Sexo, Raça.Cor, IBGE.Município.de.Residência)

diagnosticados_2016$Sexo[diagnosticados_2016$Sexo == "MASCULINO"] <- "M"
diagnosticados_2016$Sexo[diagnosticados_2016$Sexo == "FEMININO"] <- "F"

is.na(diagnosticados_2016) <- diagnosticados_2016=='' 
diagnosticados_2016$Raça.Cor[is.na(diagnosticados_2016$Raça.Cor)] <- "IGNORADO"

diagnosticados_2016$data_source <- "diagnosticados_2016"

## Unindo diagnosticados e tratados

diagnosticados_tratados_2016 <- do.call("rbind", list(diagnosticados_2016, tratados_2016))

write.csv(diagnosticados_tratados_2016, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/diagnosticados_tratados_2016.csv")
write.xlsx(diagnosticados_tratados_2016, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/diagnosticados_tratados_2016.xlsx")

## Linkage - probabilistico 

p2016 <- links_wf_probabilistic(attribute = list(diagnosticados_tratados_2016$Idade, 
                                                 diagnosticados_tratados_2016$Sexo,
                                                 diagnosticados_tratados_2016$Raça.Cor,
                                                 diagnosticados_tratados_2016$IBGE.Município.de.Residência),
                                data_source = diagnosticados_tratados_2016$data_source,
                                probabilistic = TRUE,
                                recursive = TRUE)


### Salvando tabelas

p2016_tbl <- as.data.frame(p2016$pid_weights)
p2016_tbl_2 <- as.data.frame(p2016$pid)

write.xlsx(p2016_tbl, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/p2016_tbl.xlsx")
write.xlsx(p2016_tbl_2, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/p2016_tbl_2.xlsx")

curados_2016 <- filter(p2016_tbl, sn_x>25887)

curados_2016_un <- distinct(curados_2016, sn_y , .keep_all = TRUE)

table(curados_2016$record.match)

#########
### 2017
########

## Preparando dataframes para comparação de indivíduos dos grupos "tratados"  (APAC/SIA)  X "Diagnosticados"  (HCV-RNA negativo) = "Curados"    

## Tratados (SIA/APAC)

tratados_2017 <- select(BR_med_2017_antijoin_un, AP_NUIDADE, AP_SEXO, AP_RACACOR, AP_MUNPCN)

tratados_2017$AP_RACACOR[tratados_2017$AP_RACACOR == 1] <- "BRANCA"
tratados_2017$AP_RACACOR[tratados_2017$AP_RACACOR == 2] <- "PRETA"
tratados_2017$AP_RACACOR[tratados_2017$AP_RACACOR == 3] <- "PARDA"
tratados_2017$AP_RACACOR[tratados_2017$AP_RACACOR == 4] <- "AMARELA"
tratados_2017$AP_RACACOR[tratados_2017$AP_RACACOR == 5] <- "INDIGENA"
tratados_2017$AP_RACACOR[tratados_2017$AP_RACACOR == 99] <- "IGNORADO"

tratados_2017 <- select(tratados_2017, "Idade" = "AP_NUIDADE","Sexo" = "AP_SEXO", "Raça.Cor" = "AP_RACACOR",  "IBGE.Município.de.Residência" = "AP_MUNPCN")

tratados_2017$data_source <- "tratados_2017"

## Diagnosticados (GAL)

GAL_2017_HCV_RNA_negativo <- filter(GAL_2017_HCV_RNA, Resultado=="Nao Detectavel"| Resultado=="Abaixo do limite de quantificacao")

diagnosticados_2017 <- select(GAL_2017_HCV_RNA_negativo, Idade, Sexo, Raça.Cor, IBGE.Município.de.Residência)

diagnosticados_2017$Sexo[diagnosticados_2017$Sexo == "MASCULINO"] <- "M"
diagnosticados_2017$Sexo[diagnosticados_2017$Sexo == "FEMININO"] <- "F"

is.na(diagnosticados_2017) <- diagnosticados_2017=='' 
diagnosticados_2017$Raça.Cor[is.na(diagnosticados_2017$Raça.Cor)] <- "IGNORADO"

diagnosticados_2017$data_source <- "diagnosticados_2017"

## Unindo diagnosticados e tratados

diagnosticados_tratados_2017 <- do.call("rbind", list(diagnosticados_2017, tratados_2017))

write.csv(diagnosticados_tratados_2017, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/diagnosticados_tratados_2017.csv")
write.xlsx(diagnosticados_tratados_2017, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/diagnosticados_tratados_2017.xlsx")

## Linkage - probabilistico 

p2017 <- links_wf_probabilistic(attribute = list(diagnosticados_tratados_2017$Idade, 
                                                 diagnosticados_tratados_2017$Sexo,
                                                 diagnosticados_tratados_2017$Raça.Cor,
                                                 diagnosticados_tratados_2017$IBGE.Município.de.Residência),
                                data_source = diagnosticados_tratados_2017$data_source,
                                probabilistic = TRUE,
                                recursive = TRUE)


### Salvando tabelas

p2017_tbl <- as.data.frame(p2017$pid_weights)
p2017_tbl_2 <- as.data.frame(p2017$pid)

write.xlsx(p2017_tbl, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/p2017_tbl.xlsx")
write.xlsx(p2017_tbl_2, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/p2017_tbl_2.xlsx")

curados_2017 <- filter(p2017_tbl, sn_x>42948)

curados_2017_un <- distinct(curados_2017, sn_y , .keep_all = TRUE)

table(curados_2017$record.match)


#########
### 2018
########

## Preparando dataframes para comparação de indivíduos dos grupos "tratados"  (APAC/SIA)  X "Diagnosticados"  (HCV-RNA negativo) = "Curados"    

## Tratados (SIA/APAC)

tratados_2018 <- select(BR_med_2018_antijoin_un, AP_NUIDADE, AP_SEXO, AP_RACACOR, AP_MUNPCN)

tratados_2018$AP_RACACOR[tratados_2018$AP_RACACOR == 1] <- "BRANCA"
tratados_2018$AP_RACACOR[tratados_2018$AP_RACACOR == 2] <- "PRETA"
tratados_2018$AP_RACACOR[tratados_2018$AP_RACACOR == 3] <- "PARDA"
tratados_2018$AP_RACACOR[tratados_2018$AP_RACACOR == 4] <- "AMARELA"
tratados_2018$AP_RACACOR[tratados_2018$AP_RACACOR == 5] <- "INDIGENA"
tratados_2018$AP_RACACOR[tratados_2018$AP_RACACOR == 99] <- "IGNORADO"

tratados_2018 <- select(tratados_2018, "Idade" = "AP_NUIDADE","Sexo" = "AP_SEXO", "Raça.Cor" = "AP_RACACOR",  "IBGE.Município.de.Residência" = "AP_MUNPCN")

tratados_2018$data_source <- "tratados_2018"

## Diagnosticados (GAL)

GAL_2018_HCV_RNA_negativo <- filter(GAL_2018_HCV_RNA, Resultado=="Nao Detectavel"| Resultado=="Abaixo do limite de quantificacao")

diagnosticados_2018 <- select(GAL_2018_HCV_RNA_negativo, Idade, Sexo, Raça.Cor, IBGE.Município.de.Residência)

diagnosticados_2018$Sexo[diagnosticados_2018$Sexo == "MASCULINO"] <- "M"
diagnosticados_2018$Sexo[diagnosticados_2018$Sexo == "FEMININO"] <- "F"

is.na(diagnosticados_2018) <- diagnosticados_2018=='' 
diagnosticados_2018$Raça.Cor[is.na(diagnosticados_2018$Raça.Cor)] <- "IGNORADO"

diagnosticados_2018$data_source <- "diagnosticados_2018"

## Unindo diagnosticados e tratados

diagnosticados_tratados_2018 <- do.call("rbind", list(diagnosticados_2018, tratados_2018))

write.csv(diagnosticados_tratados_2018, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/diagnosticados_tratados_2018.csv")
write.xlsx(diagnosticados_tratados_2018, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/diagnosticados_tratados_2018.xlsx")

## Linkage - probabilistico 

p2018 <- links_wf_probabilistic(attribute = list(diagnosticados_tratados_2018$Idade, 
                                                 diagnosticados_tratados_2018$Sexo,
                                                 diagnosticados_tratados_2018$Raça.Cor,
                                                 diagnosticados_tratados_2018$IBGE.Município.de.Residência),
                                data_source = diagnosticados_tratados_2018$data_source,
                              probabilistic = TRUE,
                              m_probability = 0.95,
                              u_probability = NULL,
                              score_threshold = 1,
                              recursive = TRUE)

### Salvando tabelas

p2018_tbl <- as.data.frame(p2018$pid_weights)
p2018_tbl_2 <- as.data.frame(p2018$pid)

write.xlsx(p2018_tbl, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/p2018_tbl.xlsx")
write.xlsx(p2018_tbl_2, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/p2018_tbl_2.xlsx")

curados_2018 <- filter(p2018_tbl, sn_x>38842)

curados_2018_un <- distinct(curados_2018, sn_y , .keep_all = TRUE)

#########
### 2019
########

## Preparando dataframes para comparação de indivíduos dos grupos "tratados"  (APAC/SIA)  X "Diagnosticados"  (HCV-RNA negativo) = "Curados"    

## Tratados (SIA/APAC)

tratados_2019 <- select(BR_med_2019_antijoin_un, AP_NUIDADE, AP_SEXO, AP_RACACOR, AP_MUNPCN)

tratados_2019$AP_RACACOR[tratados_2019$AP_RACACOR == 1] <- "BRANCA"
tratados_2019$AP_RACACOR[tratados_2019$AP_RACACOR == 2] <- "PRETA"
tratados_2019$AP_RACACOR[tratados_2019$AP_RACACOR == 3] <- "PARDA"
tratados_2019$AP_RACACOR[tratados_2019$AP_RACACOR == 4] <- "AMARELA"
tratados_2019$AP_RACACOR[tratados_2019$AP_RACACOR == 5] <- "INDIGENA"
tratados_2019$AP_RACACOR[tratados_2019$AP_RACACOR == 99] <- "IGNORADO"

tratados_2019 <- select(tratados_2019, "Idade" = "AP_NUIDADE","Sexo" = "AP_SEXO", "Raça.Cor" = "AP_RACACOR",  "IBGE.Município.de.Residência" = "AP_MUNPCN")

tratados_2019$data_source <- "tratados_2019"

## Diagnosticados (GAL)

GAL_2019_HCV_RNA_negativo <- filter(GAL_2019_HCV_RNA, Resultado=="Nao Detectavel"| Resultado=="Abaixo do limite de quantificacao")

diagnosticados_2019 <- select(GAL_2019_HCV_RNA_negativo, Idade, Sexo, Raça.Cor, IBGE.Município.de.Residência)

diagnosticados_2019$Sexo[diagnosticados_2019$Sexo == "MASCULINO"] <- "M"
diagnosticados_2019$Sexo[diagnosticados_2019$Sexo == "FEMININO"] <- "F"

is.na(diagnosticados_2019) <- diagnosticados_2019=='' 
diagnosticados_2019$Raça.Cor[is.na(diagnosticados_2019$Raça.Cor)] <- "IGNORADO"

diagnosticados_2019$data_source <- "diagnosticados_2019"

## Unindo diagnosticados e tratados

diagnosticados_tratados_2019 <- do.call("rbind", list(diagnosticados_2019, tratados_2019))

write.csv(diagnosticados_tratados_2019, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/diagnosticados_tratados_2019.csv")
write.xlsx(diagnosticados_tratados_2019, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/diagnosticados_tratados_2019.xlsx")

## Linkage - probabilistico 

p2019 <- links_wf_probabilistic(attribute = list(diagnosticados_tratados_2019$Idade, 
                                                 diagnosticados_tratados_2019$Sexo,
                                                 diagnosticados_tratados_2019$Raça.Cor,
                                                 diagnosticados_tratados_2019$IBGE.Município.de.Residência),
                                data_source = diagnosticados_tratados_2019$data_source,
                                probabilistic = TRUE,
                                m_probability = 0.95,
                                u_probability = NULL,
                                score_threshold = 1,
                                recursive = TRUE)


### Salvando tabelas

p2019_tbl <- as.data.frame(p2019$pid_weights)
p2019_tbl_2 <- as.data.frame(p2019$pid)

write.xlsx(p2019_tbl, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/p2019_tbl.xlsx")
write.xlsx(p2019_tbl_2, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/p2019_tbl_2.xlsx")

curados_2019 <- filter(p2019_tbl, sn_x>65695)

curados_2019_un <- distinct(curados_2019, sn_y , .keep_all = TRUE)

table(curados_2019$record.match)

#########
### 2020
########

## Preparando dataframes para comparação de indivíduos dos grupos "tratados"  (APAC/SIA)  X "Diagnosticados"  (HCV-RNA negativo) = "Curados"    

## Tratados (SIA/APAC)

tratados_2020 <- select(BR_med_2020_antijoin_un, AP_NUIDADE, AP_SEXO, AP_RACACOR, AP_MUNPCN)

tratados_2020$AP_RACACOR[tratados_2020$AP_RACACOR == 1] <- "BRANCA"
tratados_2020$AP_RACACOR[tratados_2020$AP_RACACOR == 2] <- "PRETA"
tratados_2020$AP_RACACOR[tratados_2020$AP_RACACOR == 3] <- "PARDA"
tratados_2020$AP_RACACOR[tratados_2020$AP_RACACOR == 4] <- "AMARELA"
tratados_2020$AP_RACACOR[tratados_2020$AP_RACACOR == 5] <- "INDIGENA"
tratados_2020$AP_RACACOR[tratados_2020$AP_RACACOR == 99] <- "IGNORADO"

tratados_2020 <- select(tratados_2020, "Idade" = "AP_NUIDADE","Sexo" = "AP_SEXO", "Raça.Cor" = "AP_RACACOR",  "IBGE.Município.de.Residência" = "AP_MUNPCN")

tratados_2020$data_source <- "tratados_2020"

## Diagnosticados (GAL)

GAL_2020_HCV_RNA_negativo <- filter(GAL_2020_HCV_RNA, Resultado=="Nao Detectavel"| Resultado=="Abaixo do limite de quantificacao")

diagnosticados_2020 <- select(GAL_2020_HCV_RNA_negativo, Idade, Sexo, Raça.Cor, IBGE.Município.de.Residência)

diagnosticados_2020$Sexo[diagnosticados_2020$Sexo == "MASCULINO"] <- "M"
diagnosticados_2020$Sexo[diagnosticados_2020$Sexo == "FEMININO"] <- "F"

is.na(diagnosticados_2020) <- diagnosticados_2020=='' 
diagnosticados_2020$Raça.Cor[is.na(diagnosticados_2020$Raça.Cor)] <- "IGNORADO"

diagnosticados_2020$data_source <- "diagnosticados_2020"

## Unindo diagnosticados e tratados

diagnosticados_tratados_2020 <- do.call("rbind", list(diagnosticados_2020, tratados_2020))

write.csv(diagnosticados_tratados_2020, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/diagnosticados_tratados_2020.csv")
write.xlsx(diagnosticados_tratados_2020, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/diagnosticados_tratados_2020.xlsx")

## Linkage - probabilistico 

p2020 <- links_wf_probabilistic(attribute = list(diagnosticados_tratados_2020$Idade, 
                                                 diagnosticados_tratados_2020$Sexo,
                                                 diagnosticados_tratados_2020$Raça.Cor,
                                                 diagnosticados_tratados_2020$IBGE.Município.de.Residência),
                                data_source = diagnosticados_tratados_2020$data_source,
                                probabilistic = TRUE,
                                m_probability = 0.95,
                                u_probability = NULL,
                                score_threshold = 1,
                                recursive = TRUE)


### Salvando tabelas

p2020_tbl <- as.data.frame(p2020$pid_weights)
p2020_tbl_2 <- as.data.frame(p2020$pid)

write.xlsx(p2020_tbl, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/p2020_tbl.xlsx")
write.xlsx(p2020_tbl_2, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/resultados_cascata/p2020_tbl_2.xlsx")

curados_2020 <- filter(p2020_tbl, sn_x>42263)

curados_2020_un <- distinct(curados_2020, sn_y , .keep_all = TRUE)

table(curados_2020$record.match)

############################
########## Plots = cascatas
###########################

##### Cascata 2016

posicao <- c("Infectados", "Diagnosticados", "Tratados", "Curados")

cascata2016 <- matrix(c(638852,"Infectados", 31049, "Diagnosticados", 36945, "Tratados", 385, "Curados"),ncol=2,byrow=TRUE)
colnames(cascata2016) <- c("Freq","tipo")
cascata2016 <- as.data.frame(cascata2016)

cascata2016$Freq <- as.integer(cascata2016$Freq)

ggplot(data=cascata2016, aes(x=reorder(tipo, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue",  width=0.5) +
  geom_text(aes(label=Freq), vjust=-0.3, size=6)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Cascata de cuidado de pessoas com hepatite C no ano de 2016") +theme(axis.text=element_text(size=18),
                                                                                                                                  axis.title=element_text(size=18)) + theme(plot.title = element_text(size = 20, face = "bold")) + scale_y_continuous(labels = comma)+ scale_x_discrete(limits = posicao)

##### Cascata 2017

cascata2017 <- matrix(c(643749,"Infectados", 31216, "Diagnosticados", 22755, "Tratados", 375, "Curados"),ncol=2,byrow=TRUE)
colnames(cascata2017) <- c("Freq","tipo")
cascata2017 <- as.data.frame(cascata2017)

cascata2017$Freq <- as.integer(cascata2017$Freq)

ggplot(data=cascata2017, aes(x=reorder(tipo, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue",  width=0.5) +
  geom_text(aes(label=Freq), vjust=-0.3, size=6)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Cascata de cuidado de pessoas com hepatite C no ano de 2017") +theme(axis.text=element_text(size=18),
                                                                                                                                  axis.title=element_text(size=18)) + theme(plot.title = element_text(size = 20, face = "bold")) + scale_y_continuous(labels = comma)
##### Cascata 2018

cascata2018 <- matrix(c(648479,"Infectados", 28213, "Diagnosticados", 16966, "Tratados", 483, "Curados"),ncol=2,byrow=TRUE)
colnames(cascata2018) <- c("Freq","tipo")
cascata2018 <- as.data.frame(cascata2018)

cascata2018$Freq <- as.integer(cascata2018$Freq)

ggplot(data=cascata2018, aes(x=reorder(tipo, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue",  width=0.5) +
  geom_text(aes(label=Freq), vjust=-0.3, size=6)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Cascata de cuidado de pessoas com hepatite C no ano de 2018") +theme(axis.text=element_text(size=18),
                                                                                                                                             axis.title=element_text(size=18)) + theme(plot.title = element_text(size = 20, face = "bold")) + scale_y_continuous(labels = comma)


##### Cascata 2019

cascata2019 <- matrix(c(653043,"Infectados", 38431, "Diagnosticados", 36658, "Tratados", 463, "Curados"),ncol=2,byrow=TRUE)
colnames(cascata2019) <- c("Freq","tipo")
cascata2019 <- as.data.frame(cascata2019)

cascata2019$Freq <- as.integer(cascata2019$Freq)

ggplot(data=cascata2019, aes(x=reorder(tipo, -Freq), y=Freq)) +
  geom_bar(stat="identity", fill="steelblue",  width=0.5) +
  geom_text(aes(label=Freq), vjust=-0.3, size=6)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Cascata de cuidado de pessoas com hepatite C no ano de 2019") +theme(axis.text=element_text(size=18),
                                                                                                                                  axis.title=element_text(size=18)) + theme(plot.title = element_text(size = 20, face = "bold")) + scale_y_continuous(labels = comma)


##### Cascata 2020

posicao <- c("Infectados", "Diagnosticados", "Tratados", "Curados")

cascata2020 <- matrix(c(657440,"Infectados", 17836, "Diagnosticados", 19219, "Tratados", 428, "Curados"),ncol=2,byrow=TRUE)
colnames(cascata2020) <- c("Freq","tipo")
cascata2020 <- as.data.frame(cascata2020)

cascata2020$Freq <- as.integer(cascata2020$Freq)

ggplot(data=cascata2020, aes(x=posicao, y=Freq)) +
  geom_bar(stat="identity", fill="steelblue",  width=0.5) +
  geom_text(aes(label=Freq), vjust=-0.3, size=6)+
  theme_minimal()  + labs(x="", y = "Frequência") + ggtitle("Cascata de cuidado de pessoas com hepatite C no ano de 2020") +theme(axis.text=element_text(size=18),
                                                                                                                                  axis.title=element_text(size=18)) + theme(plot.title = element_text(size = 20, face = "bold")) + scale_y_continuous(labels = comma) + scale_x_discrete(limits = posicao)

##############
####### Scatter plots
###############

cascata <- matrix(c(638852,"Infectados", 2016,643749,"Infectados", 2017, 648479,"Infectados", 2018,653043, "Infectados", 2019, 657440, "Infectados", 2020, 36945, "Tratados", 2016 , 22755, "Tratados", 2017 , 16966, "Tratados", 2018, 36658, "Tratados", 2019, 19219, "Tratados", 2020, 36945,"Tratados - Agregado" , 2016, 59700,"Tratados - Agregado" , 2017,   76666,"Tratados - Agregado" , 2018, 113324, "Tratados - Agregado", 2019, 132543, "Tratados - Agregado", 2020),ncol=3,byrow=TRUE)
colnames(cascata) <- c("Frequência","tipo", "ano")
cascata <- as.data.frame(cascata)

cascata$Frequência <- as.integer(cascata$Frequência)
cascata$ano <- as.numeric(cascata$ano)

write.xlsx(cascata, "C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/cascata.xlsx")

cascata <- read.xlsx("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/cascata.xlsx")

ggplot(data = cascata, 
       mapping = aes(x = ano, y = Frequência)) +
  geom_line(color="steelblue", size=1.2) +
  geom_text(aes(label=Frequência), vjust=1.0, size=3) +
  facet_wrap(vars(tipo)) +
  theme_bw() +  facet_grid(rows = vars(tipo)) +geom_point(color="steelblue", size=3.2) + scale_x_continuous(limits=c(2015, 2030)) + theme(text=element_text(size = 18)) + scale_y_continuous(labels = comma)

setwd("C:/Users/lemos/Downloads/HEPATITES/produtos_opas/contrato_2021/produto4/")

