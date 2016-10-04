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

@OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_VER
Cenario: Validar direito OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_VER"
E que tenha/nao tenha acesso na tela "Reprocessamento de vendas"
Quando informar "2913" no campo "numero da solicitacao - reprocessamento de vendas"
Entao clicar no botao "Pesquisar"

@OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_DETALHE_VER
Cenario: Validar direito OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_DETALHE_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_DETALHE_VER"
E que tenha/nao tenha acesso na tela "Reprocessamento de vendas"
Quando informar "2913" no campo "numero da solicitacao - reprocessamento de vendas"
E clicar no botao "Pesquisar"
Então clicar na acao "detalhar - reprocessamento de vendas"


@OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITACAO_VER
Cenario: Validar direito OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITACAO_VER"
E que tenha/nao tenha acesso na tela "Cancelamento e reversão de vendas"
Quando selecionar a opcao "Reversão de cancelamentos"
E informar "13510654" no campo "numero da solicitacao - cancelamento e reversão de vendas"
Entao clicar no botao "Pesquisar"

@OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_EXPORTAR
Cenario: Validar direito OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_EXPORTAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_EXPORTAR"
E que tenha/nao tenha acesso na tela "Débitos ao cliente sem retorno"
Quando selecionar "a primeira opcao da coluna Tratamento"
E clicar no botao "Exportar"
Entao clicar no botao "Atualizar"

@OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_VER
Cenario: Validar direito OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_VER"
E que tenha/nao tenha acesso na tela "Débitos ao cliente sem retorno"
E o sistema exibira/nao exibira a tela "Débito ao cliente sem retorno"
Entao localizar o frame "Resultados"
