#language: pt

@ALL @OPERACOES_DEMANDA
Funcionalidade: Validar os direitos na tela Operacoes > Demanda

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@OPERACOES_DEMANDAS_FILA_TRABALHO_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CANAIS_ALTERNATIVOS_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_DEMANDAS_FILA_TRABALHO_VER
Dado que tenha/nao tenha o direito "OPERACOES_DEMANDAS_FILA_TRABALHO_VER"
E que tenha/nao tenha acesso na tela "Fila de trabalho"
E o sistema exibira/nao exibira a tela "Fila de trabalho"
Entao localizar o frame "Fila"

@OPERACOES_DEMANDAS_DADOS_PROPRIETARIO_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@TESOURARIA_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CANAIS_ALTERNATIVOS_ANALISTA @JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR
@ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_DEMANDAS_DADOS_PROPRIETARIO_VER
Dado que tenha/nao tenha o direito "OPERACOES_DEMANDAS_DADOS_PROPRIETARIO_VER"
E que tenha/nao tenha acesso na tela "Fila de trabalho"
Entao o sistema exibira/nao exibira a tela "Fila de trabalho"

@OPERACOES_DEMANDAS_FILA_TRABALHO_LIBERAR_EDITAR
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CANAIS_ALTERNATIVOS_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_DEMANDAS_FILA_TRABALHO_LIBERAR_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_DEMANDAS_FILA_TRABALHO_LIBERAR_EDITAR"
E que tenha/nao tenha acesso na tela "Fila de trabalho"
E o sistema exibira/nao exibira a tela "Fila de trabalho"
E clicar na acao "Atribuir"
Entao clicar na acao "Liberar"

@OPERACOES_DEMANDAS_FILA_TRABALHO_ATRIBUIRPARA_EDITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_DEMANDAS_FILA_TRABALHO_ATRIBUIRPARA_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_DEMANDAS_FILA_TRABALHO_ATRIBUIRPARA_EDITAR"
E que tenha/nao tenha acesso na tela "Fila de trabalho"
E o sistema exibira/nao exibira a tela "Fila de trabalho"
E clicar na acao "Atribuir"
Entao clicar na acao "Editar"

@OPERACOES_DEMANDAS_DETALHE_ATIVIDADE_EDITAR
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CANAIS_ALTERNATIVOS_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_DEMANDAS_DETALHE_ATIVIDADE_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_DEMANDAS_DETALHE_ATIVIDADE_EDITAR"
E que tenha/nao tenha acesso na tela "Fila de trabalho"
E clicar na acao "Atribuir"
E clicar na acao "Editar"
Quando clicar na aba "DETALHE"
E selecionar a opcao "Sim"
Entao o botao "Confirmar" estara habilitado/desabilitado

@OPERACOES_DEMANDAS_FILADETRABALHO_ACOMP_EDITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_DEMANDAS_FILADETRABALHO_ACOMP_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_DEMANDAS_FILADETRABALHO_ACOMP_EDITAR"
E que tenha/nao tenha acesso na tela "Fila de trabalho"
E o sistema exibira/nao exibira a tela "Fila de trabalho"
E clicar na acao "Atribuir"
Entao clicar na acao "Editar"

@OPERACOES_DEMANDAS_FILADETRABALHO_ACOMP_ALCADASNEGOCIACAO_VER
@GESTAO_ECONOMICA_ANALISTA
Cenario: CT.SEGINFO - [AUT] OPERACOES_DEMANDAS_FILADETRABALHO_ACOMP_ALCADASNEGOCIACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_DEMANDAS_FILADETRABALHO_ACOMP_ALCADASNEGOCIACAO_VER"
E que tenha/nao tenha acesso na tela "Fila de trabalho"
E o sistema exibira/nao exibira a tela "Fila de trabalho"

@OPERACOES_DEMANDAS_FILADETRABALHO_ACOMP_ALCADASNEGOCIACAO_APROVAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_DEMANDAS_FILADETRABALHO_ACOMP_ALCADASNEGOCIACAO_APROVAR
Dado que tenha/nao tenha o direito "OPERACOES_DEMANDAS_FILADETRABALHO_ACOMP_ALCADASNEGOCIACAO_APROVAR"
E que tenha/nao tenha acesso na tela "Fila de trabalho"
E o sistema exibira/nao exibira a tela "Fila de trabalho"
Entao clicar na acao "Liberar"

@OPERACOES_DEMANDAS_FILADETRABALHO_PRECIFICACAOPZFLEX_APROVAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_DEMANDAS_FILADETRABALHO_PRECIFICACAOPZFLEX_APROVAR
Dado que tenha/nao tenha o direito "OPERACOES_DEMANDAS_FILADETRABALHO_PRECIFICACAOPZFLEX_APROVAR"
E que tenha/nao tenha acesso na tela "Fila de trabalho"
E o sistema exibira/nao exibira a tela "Fila de trabalho"
Entao clicar na acao "Liberar"
