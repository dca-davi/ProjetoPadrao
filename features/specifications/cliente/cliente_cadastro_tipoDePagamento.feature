#language: pt

@ALL @CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTO
Funcionalidade: Validar os direitos na tela Cliente > Cadastro > Informacoes do cliente > Tipo de Pagamento

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTO_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @TESOURARIA_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CENTRAL_ANTECIPACAO_ANALISTA @CANAIS_ALTERNATIVOS_ANALISTA @CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
@JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTO_VER
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTO_VER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Tipo de pagamento"
Entao podera/nao podera acessar a aba "Tipo de pagamento"

@CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTOAMEX_EDITAR
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_HELP_DESK_ANALISTA
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTOAMEX_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTOAMEX_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Tipo de pagamento"
E selecionar um item "AMEX"
E clicar no botao "Editar" do frame "Dados do tipo de pagamento"
Entao o campo Codigo Amex devera estar habilitado/desabilitado

@CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTO_EDITAR
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Tipo de pagamento"
E clicar na acao "Visualizar"
E clicar no botao "Editar" do frame "Dados do tipo de pagamento"
Entao sera/nao sera possivel editar todos os campos do tipo de pagamento

@CLIENTES_CADASTRO_INFO_FORMADECOBRANCAEPRECO_EDITAR
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_FORMADECOBRANCAEPRECO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_FORMADECOBRANCAEPRECO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Tipo de pagamento"
E clicar na acao "Visualizar"
Entao o botao "Editar" do frame "Remuneracao" estara habilitado/desabilitado

@CLIENTES_CADASTRO_INFO_CODIGOAMEX_EDITAR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_CODIGOAMEX_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_CODIGOAMEX_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar no botao "Editar Dados" do frame "Dados de cadastro"
Entao o campo Codigo Amex devera estar habilitado/desabilitado