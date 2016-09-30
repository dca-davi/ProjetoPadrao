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

@OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_VER
Cenario: Validar direito OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_VER"
Entao que tenha/nao tenha acesso na tela "Débitos ao cliente sem retorno"

# Demis >>>
@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_EDITAR
Cenario: Validar direito OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_EDITAR"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
Entao clicar na aba "Pesquisar"

@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_VER
Cenario: Validar direito OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_VER"
E que tenha/nao tenha acesso na tela "Envio de débitos ao cliente"
Entao clicar na aba "Pesquisar"

@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_EDITAR
Cenario: Validar direito OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_EDITAR"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
Entao clicar na aba "Pesquisar"

@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_VER
Cenario: Validar direito OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_VER"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
Entao clicar na aba "Pesquisar"
# Demis <<<
