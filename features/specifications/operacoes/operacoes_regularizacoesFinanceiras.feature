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
@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_VER
Cenario: Validar direito OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_EDITAR"
E que tenha/nao tenha acesso na tela "Envio de débitos ao cliente"
Entao clicar no botao "Pesquisar"

@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_EDITAR
Cenario: Validar direito OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_EDITAR"
E que tenha/nao tenha acesso na tela "Envio de débitos ao cliente"
Entao clicar na aba "Pesquisar"

@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_VER
Cenario: Validar direito OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_VER"
E que tenha/nao tenha acesso na tela "Envio de débitos ao cliente"
Entao clicar na aba "ANULAÇÃO"
E clicar no botao "Pesquisar" da aba anulacao

@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_EDITAR
Cenario: Validar direito OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_EDITAR"
E que tenha/nao tenha acesso na tela "Envio de débitos ao cliente"
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

@OPERACOES_REGULARIZACOES_AJUSTE_DETALHE_VER
Cenario: Validar direito OPERACOES_REGULARIZACOES_AJUSTE_DETALHE_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_AJUSTE_DETALHE_VER"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
E informar "13507217" no campo "numero da solicitacao - ajustes financeiros"
Quando clicar no botao "Pesquisar"
Entao localizar o frame "Efetivada"

<<<<<<< HEAD
@OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_SOLICITAR
Cenario: Validar direito OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_SOLICITAR"
E que tenha/nao tenha acesso na tela "Débitos ao cliente sem retorno"
E selecionar "a primeira opcao da coluna Tratamento"
Quando clicar no botao "Confirmar"
E informar "05/10/2016" no campo "data de liquidação - tratamento"
Entao clicar no botao "Confirmar" da tela de tratamento
=======
@OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITAR
Cenario: Validar direito OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITAR"
E que tenha/nao tenha acesso na tela "Cancelamento e reversão de vendas"
Quando selecionar a opcao "Cancelamento de vendas"
E informar "627406028342762" no campo "codigo da venda"
Quando clicar no botao "Pesquisar"
E clicar na acao "Reverter"
Entao clicar no botao "Reverter"

@OPERACOES_REGULARIZACOES_REPROCESSAMENTO_REENTRADA_SOLICITAR
Cenario: Validar direito OPERACOES_REGULARIZACOES_REPROCESSAMENTO_REENTRADA_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REPROCESSAMENTO_REENTRADA_SOLICITAR"
E que tenha/nao tenha acesso na tela "Reprocessamento de vendas"
Entao clicar na aba "REENTRADA DE VENDA"
Entao informar "1018242187" no campo "n do cliente -reentrada de venda"
E clicar no botao "OK"
E informar "123456" no campo "codigo de autorização-reentrada de venda"
E informar "5308698871257860" no campo "n do cartao aberto-reentrada de venda"
E informar "02/10/2016" no campo "data da autorizacao-reentrada de venda"
E informar "1.234,56" no campo "valor da autorizacao-reentrada de venda"
E informar "1011-MASTERCARD Débito À vista" no campo "tipo de pagamento-reentrada de venda"
E informar "44450498" no campo "terminal-reentrada de venda"
E informar "381347" no campo "nsu-reentrada de venda"
E informar "Teste" no campo "comentario-reentrada de venda"
Entao clicar no botao "Continuar"
>>>>>>> 1a12be0b72da0e3a86f1030feb14dd0407e59dae
