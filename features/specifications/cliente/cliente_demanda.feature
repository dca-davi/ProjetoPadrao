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
E selecionar a opcao "1" na tabela solicitante
Entao o botao "Continuar", "1" devera estar habilitado/desabilitado
