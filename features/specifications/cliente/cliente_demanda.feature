#language: pt

@ALL @CLIENTE_DEMANDA
Funcionalidade: Validar os direitos na tela Cliente > Demanda > Abertura de Demanda

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTES_DEMANDAS_ABERTURA_REPROCESSAMENTO_SOLICITAR
Cenario: Validar direito CLIENTES_DEMANDAS_ABERTURA_REPROCESSAMENTO_SOLICITAR
Dado que tenha/nao tenha o direito "CLIENTES_DEMANDAS_ABERTURA_REPROCESSAMENTO_SOLICITAR"
E que tenha/nao tenha acesso na tela "Abertura de demanda"
Quando selecionar "Solicitação para regularização financeira" do campo "Demanda-Abertura de demanda"
E selecionar "Pedido de Reprocessamento de vendas" do campo "Tipo da solicitação-Abertura de demanda"
Quando selecionar a opcao "1" na tabela solicitante
E clicar no botao "Continuar"
Quando informar "06/10/2016" no campo "data de autorizacao - de"
E informar "12/10/2016" no campo "data de autorizacao - ate"
Quando selecionar a opcao "Autorização desfeita" do campo "Status"
E clicar no botao "Pesquisar"
E clicar no botao "Reprocessamento"
Quando informar "524784" no campo "Codigo de autorizacao"
E informar "teste" no campo "Comentario"
E clicar no botao "Continuar"
