#language: pt

@ALL @CLIENTES_CADASTRO_DOMICILIO_BANCARIO
Funcionalidade: Validar os direitos na tela Cliente > Cadastro > Informacoes do cliente > Domicilio Bancario

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @TESOURARIA_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CENTRAL_ANTECIPACAO_ANALISTA @GESTAO_ECONOMICA_ANALISTA @CANAIS_ALTERNATIVOS_ANALISTA
@JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_VER
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_VER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Domicílio Bancário"
Entao podera/nao podera acessar a Tela de pesquisa

@CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_SOLICITAR
@CADASTRO_ANALISTA_CIELO @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_SOLICITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_SOLICITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Domicílio Bancário"
Entao o link "INCLUIR" deve estar habilitado/desabilitado

@CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_APROVADOR_EDITAR
@CADASTRO_ANALISTA_CIELO_APROVADOR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_APROVADOR_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_APROVADOR_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Domicílio Bancário"
Entao o link "CONFIGURAR" deve estar habilitado/desabilitado

@CLIENTES_DOMICILIOBANCARIO_CONTACORRENTE_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA
@CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CENTRAL_ANTECIPACAO_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: Validar direito CLIENTES_DOMICILIOBANCARIO_CONTACORRENTE_VER
Dado que tenha/nao tenha o direito "CLIENTES_DOMICILIOBANCARIO_CONTACORRENTE_VER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Domicílio Bancário"
Entao o campo conta esta/nao esta truncado
