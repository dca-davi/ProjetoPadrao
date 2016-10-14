#language: pt

@ALL @CLIENTE_DEMANDA
Funcionalidade: Validar os direitos na tela Cliente > Demanda > Abertura de Demanda

Contexto:
Dado que eu faca login
E informe o EC "70175764"

@CLIENTES_DEMANDAS_ABERTURA_REPROCESSAMENTO_SOLICITAR
Cenario: Validar direito CLIENTES_DEMANDAS_ABERTURA_REPROCESSAMENTO_SOLICITAR
Dado que tenha/nao tenha o direito "CLIENTES_DEMANDAS_ABERTURA_REPROCESSAMENTO_SOLICITAR"
E que tenha/nao tenha acesso na tela "Abertura de demanda"
Quando selecionar "Solicitação para Regularização Financeira" do campo "Demanda-Abertura de demanda"
E selecionar "Pedido de reprocessamento de vendas" do campo "Tipo da solicitação-Abertura de demanda"
Quando selecionar a opcao "1" na tabela solicitante
E clicar no botao "Continuar"
Quando informar "06/10/2016" no campo "data autorizacao reprocessamento de vendas - de"
E informar "12/10/2016" no campo "data autorizacao reprocessamento de vendas - ate"
Quando selecionar "Autorização desfeita" do campo "Status-Reprocessamento de Venda"
E clicar no botao "Pesquisar"
E clicar na acao "reprocessamento"
Quando informar "524784" no campo "Codigo de autorizacao"
E informar "teste" no campo "Comentario"
E clicar no botao "Continuar"
