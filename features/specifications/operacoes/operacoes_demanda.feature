#language: pt

@ALL @OPERACOES_DEMANDA
Funcionalidade: Validar os direitos na tela Operacoes > Demanda

Contexto:
Dado que eu faca login
#E informe o EC "1018242187"

@OPERACOES_DEMANDAS_FILA_TRABALHO_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito OPERACOES_DEMANDAS_FILA_TRABALHO_VER
Dado que tenha/nao tenha o direito "OPERACOES_DEMANDAS_FILA_TRABALHO_VER"
E que tenha/nao tenha acesso na tela "Fila de trabalho"
E o sistema exibira/nao exibira a tela "Fila de trabalho"
Entao localizar o frame "Fila"

@OPERACOES_DEMANDAS_FILA_TRABALHO_LIBERAR_EDITAR
Cenario: Validar direito OPERACOES_DEMANDAS_FILA_TRABALHO_LIBERAR_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_DEMANDAS_FILA_TRABALHO_LIBERAR_EDITAR"
E que tenha/nao tenha acesso na tela "Fila de trabalho"
E o sistema exibira/nao exibira a tela "Fila de trabalho"
Entao clicar na acao "Liberar"
