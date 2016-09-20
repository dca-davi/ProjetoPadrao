#language: pt

@OPERACOES_REGULARIZACOES_FINANCEIRAS
Funcionalidade: Validar os direitos na tela Operacoes > Regularizações financeiras

Contexto:
Dado que eu faca login

@OPERACOES_CONSULTA_TRANSACAO_VER
Cenario: Validar direito OPERACOES_CONSULTA_TRANSACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_CONSULTA_TRANSACAO_VER"
E que tenha/nao tenha acesso na tela "Consulta de transações"
Entao o sistema exibira/nao exibira a tela "Consulta de transações"

@OPERACOES_REGULARIZACOES_AJUSTE_VER
Cenario: Validar direito OPERACOES_REGULARIZACOES_AJUSTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_AJUSTE_VER"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
Entao clicar na aba "Pesquisar"


@OPERACOES_REGULARIZACOES_AJUSTE_SOLICITAR
Cenario: Validar direito OPERACOES_REGULARIZACOES_AJUSTE_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_AJUSTE_SOLICITAR"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
Entao clicar na aba "Incluir"


@CLIENTES_NUMERODOCARTAOABERTO_DIGITAR
Cenario: Validar direito CLIENTES_NUMERODOCARTAOABERTO_DIGITAR
Dado que tenha/nao tenha o direito "CLIENTES_NUMERODOCARTAOABERTO_DIGITAR"
E que tenha/nao tenha acesso na tela "Consulta de transações"
Entao o campo "N° do cartão aberto" existe/nao existe

@CONFIGURACOES_MOTIVOS_AJUSTES_VER
Cenario: Validar direito CONFIGURACOES_MOTIVOS_AJUSTES_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_MOTIVOS_AJUSTES_VER"
E que tenha/nao tenha acesso na tela "Motivo de ajuste"
Quando clicar no botao "Pesquisar"
Entao o sistema exibira/nao exibira a tela "Motivo de Ajuste"

@CONFIGURACOES_MOTIVOS_AJUSTES_EDITAR
Cenario: Validar direito CONFIGURACOES_MOTIVOS_AJUSTES_REMOVER
Dado que tenha/nao tenha o direito "CONFIGURACOES_MOTIVOS_AJUSTES_REMOVER"
E que tenha/nao tenha acesso na tela "Motivo de ajuste"
Quando clicar no botao "Pesquisar"
Entao clicar na acao "Editar"

@CONFIGURACOES_MOTIVOS_AJUSTES_INCLUIR
Cenario: Validar direito CONFIGURACOES_MOTIVOS_AJUSTES_INCLUIR
Dado que tenha/nao tenha o direito "CONFIGURACOES_MOTIVOS_AJUSTES_INCLUIR"
E que tenha/nao tenha acesso na tela "Motivo de ajuste"
Entao clicar na aba "Incluir"

@CONFIGURACOES_MOTIVOS_AJUSTES_REMOVER
Cenario: Validar direito CONFIGURACOES_MOTIVOS_AJUSTES_REMOVER
Dado que tenha/nao tenha o direito "CONFIGURACOES_MOTIVOS_AJUSTES_REMOVER"
E que tenha/nao tenha acesso na tela "Motivo de ajuste"
Quando clicar no botao "Pesquisar"
E clicar na acao "Visualizar"
Entao clicar no botao "Excluir"

@OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_VER
Cenario: Validar direito OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_VER"
Entao que tenha/nao tenha acesso na tela "Débitos ao cliente sem retorno"
