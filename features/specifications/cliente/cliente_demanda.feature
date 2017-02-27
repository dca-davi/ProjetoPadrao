#language: pt

@ALL @CLIENTE_DEMANDA
Funcionalidade: Validar os direitos na tela Cliente > Demanda > Abertura de Demanda

Contexto:
Dado que eu faca login
E informe o EC "70175764"

@CLIENTES_DEMANDAS_ABERTURA_REPROCESSAMENTO_SOLICITAR
@CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_DEMANDAS_ABERTURA_REPROCESSAMENTO_SOLICITAR
Dado que tenha/nao tenha o direito "CLIENTES_DEMANDAS_ABERTURA_REPROCESSAMENTO_SOLICITAR"
E que tenha/nao tenha acesso na tela "Abertura de demanda"
Quando selecionar "Solicitação para Regularização Financeira" do campo "Demanda-Abertura de demanda", "0"
E selecionar "Pedido de reprocessamento de vendas" do campo "Tipo da solicitação-Abertura de demanda", "0"
Quando selecionar a opcao "1" na tabela solicitante
E clicar no botao "Continuar", "0"
Quando informar "06/10/2016" no campo "data autorizacao reprocessamento de vendas - de"
E informar "12/10/2016" no campo "data autorizacao reprocessamento de vendas - ate"
Quando selecionar "Autorização desfeita" do campo "Status-Reprocessamento de Venda", "0"
E clicar no botao "Pesquisar", "0"
E clicar na acao "reprocessamento", "0"
Quando informar "524784" no campo "Codigo de autorizacao"
E informar "teste" no campo "Comentario"
E clicar no botao "Continuar", "1"
