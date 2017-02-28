#language: pt

@ALL @CLIENTE_DEMANDAS
Funcionalidade: Validar os direitos na tela Cliente > Demanda > Abertura de Demanda

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTE_DEMANDAS_ABERTURADEMANDA_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA @CANAIS_ALTERNATIVOS_ANALISTA
@CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTE_DEMANDAS_ABERTURADEMANDA_VER
Dado que tenha/nao tenha o direito "CLIENTE_DEMANDAS_ABERTURADEMANDA_VER"
E que tenha/nao tenha acesso na tela "Abertura de demanda"
Entao o sistema exibira/nao exibira a tela "Abertura de demanda", "1"

@CLIENTE_DEMANDAS_ABERTURADEMANDA_INCLUIR
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_HELP_DESK_ANALISTA
@LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA
@CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTE_DEMANDAS_ABERTURADEMANDA_INCLUIR
Dado que tenha/nao tenha o direito "CLIENTE_DEMANDAS_ABERTURADEMANDA_INCLUIR"
E que tenha/nao tenha acesso na tela "Abertura de demanda"
Entao o botao "Continuar", "1" devera estar habilitado/desabilitado

@CLIENTES_DEMANDAS_ABERTURA_LOJA_CIELO_SOLICITAR
Cenario: CT.SEGINFO - [AUT] CLIENTES_DEMANDAS_ABERTURA_LOJA_CIELO_SOLICITAR
Dado que tenha/nao tenha o direito "CLIENTES_DEMANDAS_ABERTURA_LOJA_CIELO_SOLICITAR"
E que tenha/nao tenha acesso na tela "Abertura de demanda"
E selecionar "Equipamento" do campo "demanda", "0"
E selecionar "Instalação de Cielo Mobile" do campo "tipo da solicitacao", "0"
E Selecionar a opcao da sessao - Solicitante "0"
Quando clicar no botao "Continuar", "0"
Entao o botao "Continuar", "1" devera estar habilitado/desabilitado

@CLIENTES_DEMANDAS_ABERTURA_REGULARIZACOES_FINANCEIRAS_SOLICITAR
Cenario: CT.SEGINFO - [AUT] CLIENTES_DEMANDAS_ABERTURA_REGULARIZACOES_FINANCEIRAS_SOLICITAR
Dado que tenha/nao tenha o direito "CLIENTES_DEMANDAS_ABERTURA_REGULARIZACOES_FINANCEIRAS_SOLICITAR"
E que tenha/nao tenha acesso na tela "Abertura de demanda"
E selecionar "Solicitação para Regularização Financeira" do campo "demanda", "0"
E selecionar "Pedido para regularizar cobrança indevida telefonia" do campo "tipo da solicitacao", "0"
E Selecionar a opcao da sessao - Solicitante "0"
Quando clicar no botao "Continuar", "0"
Entao o botao "Continuar", "1" devera estar habilitado/desabilitado
