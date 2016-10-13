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

@OPERACOES_DEMANDAS_DADOS_PROPRIETARIO_VER
Cenario: Validar direito OPERACOES_DEMANDAS_DADOS_PROPRIETARIO_VER
Dado que tenha/nao tenha o direito "OPERACOES_DEMANDAS_DADOS_PROPRIETARIO_VER"
E que tenha/nao tenha acesso na tela "Fila de trabalho"
Entao o sistema exibira/nao exibira a tela "Fila de trabalho"

@OPERACOES_DEMANDAS_FILA_TRABALHO_LIBERAR_EDITAR
Cenario: Validar direito OPERACOES_DEMANDAS_FILA_TRABALHO_LIBERAR_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_DEMANDAS_FILA_TRABALHO_LIBERAR_EDITAR"
E que tenha/nao tenha acesso na tela "Fila de trabalho"
E o sistema exibira/nao exibira a tela "Fila de trabalho"
Entao clicar na acao "Liberar"

@OPERACOES_DEMANDAS_DETALHE_ATIVIDADE_EDITAR
Cenario: Validar direito OPERACOES_DEMANDAS_DETALHE_ATIVIDADE_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_DEMANDAS_DETALHE_ATIVIDADE_EDITAR"
E que tenha/nao tenha acesso na tela "Fila de trabalho"
E clicar na acao "Editar"
Quando clicar na aba "DETALHE"
E selecionar a opcao "Sim"
Entao o botao "Confirmar" estara habilitado/desabilitado
