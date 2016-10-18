#language: pt

@ALL @CONFIGURACOES_REGULARIZACOESFINANCEIRAS
Funcionalidade: Validar os direitos na tela Configurações > Regularizações financeiras > Precificacao

Contexto:
Dado que eu faca login

@CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_HELP_DESK_ANALISTA
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenário: Validar direito CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER"
E que tenha/nao tenha acesso na tela "Regra de cancelamento"
Quando clicar na aba "REGRA DE LIBERAÇÃO"
Entao a aplicacao exibira/nao exibira o painel grid da tela crfrl "Dados da pesquisa"

@CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRASDECANCELAMENTO_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_HELP_DESK_ANALISTA
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenário: Validar direito CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER"
E que tenha/nao tenha acesso na tela "Regra de cancelamento"
Entao a aplicacao exibira/nao exibira o painel grid da tela crf "Dados da pesquisa"

@CONFIGURACOES_MOTIVOS_AJUSTES_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_HELP_DESK_ANALISTA
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO
@TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA @CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
@CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: Validar direito CONFIGURACOES_MOTIVOS_AJUSTES_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_MOTIVOS_AJUSTES_VER"
E que tenha/nao tenha acesso na tela "Motivo de ajuste"
Quando clicar no botao "Pesquisar"
Entao o sistema exibira/nao exibira a tela "Motivo de Ajuste"

@CONFIGURACOES_MOTIVOS_AJUSTES_EDITAR
@CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
Cenario: Validar direito CONFIGURACOES_MOTIVOS_AJUSTES_REMOVER
Dado que tenha/nao tenha o direito "CONFIGURACOES_MOTIVOS_AJUSTES_REMOVER"
E que tenha/nao tenha acesso na tela "Motivo de ajuste"
Quando clicar no botao "Pesquisar"
Entao clicar na acao "Editar"

@CONFIGURACOES_MOTIVOS_AJUSTES_INCLUIR
@CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
Cenario: Validar direito CONFIGURACOES_MOTIVOS_AJUSTES_INCLUIR
Dado que tenha/nao tenha o direito "CONFIGURACOES_MOTIVOS_AJUSTES_INCLUIR"
E que tenha/nao tenha acesso na tela "Motivo de ajuste"
Entao clicar na aba "Incluir"

@CONFIGURACOES_MOTIVOS_AJUSTES_REMOVER
@CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
Cenario: Validar direito CONFIGURACOES_MOTIVOS_AJUSTES_REMOVER
Dado que tenha/nao tenha o direito "CONFIGURACOES_MOTIVOS_AJUSTES_REMOVER"
E que tenha/nao tenha acesso na tela "Motivo de ajuste"
Quando clicar no botao "Pesquisar"
E clicar na acao "Visualizar"
Entao clicar no botao "Excluir"

@CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAOSALDO_EDITAR
Cenario: Validar direito CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAOSALDO_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAOSALDO_EDITAR"
E que tenha/nao tenha acesso na tela "Regra de cancelamento"
Quando clicar na aba "REGRA DE LIBERAÇÃO"
E selecionar o combobox "parametro - regra de cancelamento" e a opcao "Liberar consulta de saldo"
E localizar e clicar no botao "Pesquisar"
Quando clicar na acao "Visualizar"
Entao o botao "Excluir" estara habilitado/desabilitado

@CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAOBLOQUEIO_EDITAR
Cenario: Validar direito CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAOBLOQUEIO_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAOBLOQUEIO_EDITAR"
E que tenha/nao tenha acesso na tela "Regra de cancelamento"
Quando clicar na aba "REGRA DE LIBERAÇÃO"
E selecionar o combobox "parametro - regra de cancelamento" e a opcao "Liberar bloqueio de cancelamento"
E localizar e clicar no botao "Pesquisar"
Entao clicar na acao "Visualizar"
