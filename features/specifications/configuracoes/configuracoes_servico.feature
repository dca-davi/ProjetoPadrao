#language: pt
@ALL @CONFIGURACOES_SERVICO
Funcionalidade: Validar os direitos na tela Configurações > Serviços

Contexto:
Dado que eu faca login

@CONFIGURACOES_SERVICOS_CONTRATOPADRAO_VER
Cenario: Validar direito CONFIGURACOES_SERVICOS_CONTRATOPADRAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_SERVICOS_CONTRATOPADRAO_VER"
E que tenha/nao tenha acesso na tela "Contrato padrão"
E selecionar a opcao "Serviço" no campo "Tipo"
E selecionar a opcao "Todos" no campo "Serviço"
E selecionar a opcao "Plano Máquina" no campo "Item"
E selecionar a opcao "Plano de benefícios agenda" no campo "Nome do Contrato"
E selecionar a opcao "Agenda Financeira" no campo "Forma de faturamento"
E selecionar a opcao "Atual" no campo "Vigência"
Quando clicar no botao "Pesquisar"
Entao localizar o frame "Resultado"

@CONFIGURACOES_SERVICOS_INDICESECONOMICOS_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_HELP_DESK_ANALISTA
@LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA
Cenario: Validar direito CONFIGURACOES_SERVICOS_INDICESECONOMICOS_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_SERVICOS_INDICESECONOMICOS_VER"
E que tenha/nao tenha acesso na tela "Índices econômicos"
Entao o sistema exibira/nao exibira a tela "Índices econômicos"

@CONFIGURACOES_SERVICOS_INDICESECONOMICOS_INCLUIR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA
Cenario: Validar direito CONFIGURACOES_SERVICOS_INDICESECONOMICOS_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_SERVICOS_INDICESECONOMICOS_VER"
E que tenha/nao tenha acesso na tela "Índices econômicos"
Quando selecionar o Indice "IGPM Acumulado nos Últimos 12 Meses"
E clicar no botao "Pesquisar"
Entao o botao "Incluir" devera estar habilitado/desabilitado

@CONFIGURACOES_SERVICOS_PARAMETROS_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_HELP_DESK_ANALISTA
@LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: Validar direito CONFIGURACOES_SERVICOS_PARAMETROS_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_SERVICOS_PARAMETROS_VER"
E que tenha/nao tenha acesso na tela "Parâmetros"
Entao o sistema exibira/nao exibira a tela "Parâmetros"

@CONFIGURACOES_SERVICOS_PARAMETROS_EDITAR
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_HELP_DESK_ANALISTA
@LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA
Cenario: Validar direito CONFIGURACOES_SERVICOS_PARAMETROS_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_SERVICOS_PARAMETROS_EDITAR"
E que tenha/nao tenha acesso na tela "Parâmetros"
Entao clicar na acao "Editar"

@CONFIGURACOES_SERVICOS_PRECOPADRAO_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_HELP_DESK_ANALISTA
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: Validar direito CONFIGURACOES_SERVICOS_PRECOPADRAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_SERVICOS_PRECOPADRAO_VER"
E que tenha/nao tenha acesso na tela "Preço padrão"
Entao o sistema exibira/nao exibira a tela "Preço padrão"

@CONFIGURACOES_SERVICOS_INDICESECONOMICOS_EDITAR
Cenario: Validar direito CONFIGURACOES_SERVICOS_INDICESECONOMICOS_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_SERVICOS_INDICESECONOMICOS_EDITAR"
E que tenha/nao tenha acesso na tela "Índices econômicos"
E selecionar o item "IGPM Acumulado nos Últimos 12 Meses"
Entao clicar no botao "Pesquisar"
E clicar na acao "Editar"
