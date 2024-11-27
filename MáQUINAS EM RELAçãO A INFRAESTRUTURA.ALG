Algoritmo "Máquinas em Relação a Infraestrutura"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/11/2024

Tipo
//
 maquina = registro
      nome: caractere
      dias: inteiro
      horas: inteiro
      gravidade: inteiro
      prioridade: real
   fimregistro


Var
// Seção de Declarações das variáveis 
 maquinas: vetor[1..5] de maquina
   i, j, total: inteiro
   temp: maquina
   busca: caractere
   encontrou: logico

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

total <- 5


   para i de 1 ate total faca
      escreval("Digite o nome da máquina ", i, ": ")
      leia(maquinas[i].nome)
      escreval("Digite os dias desde a última manutenção: ")
      leia(maquinas[i].dias)
      escreval("Digite as horas trabalhadas: ")
      leia(maquinas[i].horas)
      escreval("Digite a gravidade dos problemas relatados (1 a 10): ")
      leia(maquinas[i].gravidade)
      maquinas[i].prioridade <- (maquinas[i].dias * 0.4) + (maquinas[i].horas * 0.3) +(maquinas[i].gravidade * 0.3)
   fimpara


   para i de 1 ate total - 1 faca
      para j de 1 ate total - i faca
         se maquinas[j].prioridade < maquinas[j + 1].prioridade entao
            temp <- maquinas[j]
            maquinas[j] <- maquinas[j + 1]
            maquinas[j + 1] <- temp
         fimse
      fimpara
   fimpara


   escreval("Lista de máquinas por ordem de prioridade:")
   para i de 1 ate total faca
      escreval(maquinas[i].nome, " - Prioridade: ", maquinas[i].prioridade:0:1)
   fimpara


   escreval("Digite o nome da máquina para buscar a prioridade: ")
   leia(busca)
   encontrou <- falso
   para i de 1 ate total faca
      se maquinas[i].nome = busca entao
         escreval("Prioridade de ", busca, ": ", maquinas[i].prioridade:0:1)
         encontrou <- verdadeiro
         pare
      fimse
   fimpara

   se nao encontrou entao
      escreval("Máquina não encontrada.")
   fimse




Fimalgoritmo