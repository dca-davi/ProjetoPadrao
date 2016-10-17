#language: pt

@ALL @CLIENTE_CADASTRO_GRUPO_COMERCIAL
Funcionalidade: Validar os direitos na tela Operacoes > Regularizações financeiras

Contexto:
Dado que eu faca login
E informe o nivel de hierarquia como "Grupo comercial"
E informe o EC "1018242187"

@CLIENTES_CADASTRO_GRUPOCOMERCIAL_EDITAR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA @CRM_COORDENADOR
@ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: Validar direito CLIENTES_CADASTRO_GRUPOCOMERCIAL_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_GRUPOCOMERCIAL_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do grupo comercial"
Entao o sistema exibira/nao exibira a tela "Informações do grupo comercial"
