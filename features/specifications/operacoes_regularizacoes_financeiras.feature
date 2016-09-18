#language: pt

@OPERACOES_REGULARIZACOES_FINANCEIRAS
Funcionalidade: Validar os direitos na tela Operacoes > Regularizações financeiras

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@OPERACOES_CONSULTA_TRANSACAO_VER
Cenario: Validar direito OPERACOES_CONSULTA_TRANSACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_CONSULTA_TRANSACAO_VER"
E que tenha/nao tenha acesso na tela "Consulta de transações"
Entao o sistema exibira/nao exibira a tela "Consulta de transações"

@OPERACOES_REGULARIZACOES_AJUSTE_VER
Cenario: Validar direito OPERACOES_REGULARIZACOES_AJUSTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_AJUSTE_VER"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
E que tenha/nao tenha acesso na tela "Pesquisar"
Entao o sistema exibira/nao exibira a tela "Ajustes financeiros"

@OPERACOES_REGULARIZACOES_AJUSTE_SOLICITAR
Cenario: Validar direito OPERACOES_REGULARIZACOES_AJUSTE_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_AJUSTE_SOLICITAR"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
E que tenha/nao tenha acesso na tela "Incluir"
Entao o sistema exibira/nao exibira a tela "Ajustes financeiros"

@CLIENTES_NUMERODOCARTAOABERTO_DIGITAR
Cenario: Validar direito CLIENTES_NUMERODOCARTAOABERTO_DIGITAR
Dado que tenha/nao tenha o direito "CLIENTES_NUMERODOCARTAOABERTO_DIGITAR"
E que tenha/nao tenha acesso na tela "Consulta de transações"
Entao o campo "N° do cartão aberto" existe/nao existe
