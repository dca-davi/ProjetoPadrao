#language: pt

@ALL @CONFIGURACOES_REGULARIZACOESFINANCEIRAS
Funcionalidade: Validar os direitos na tela Configurações > Regularizações financeiras > Precificacao

Contexto:
Dado que eu faca login

@CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER
Cenário: Validar direito CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER"
E que tenha/nao tenha acesso na tela "Regra de cancelamento"
Quando clicar na aba "REGRA DE LIBERAÇÃO"
Entao a aplicacao exibira/nao exibira o painel grid da tela crfrl "Dados da pesquisa"

#@CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER
#Dado que tenha/nao tenha o direito "CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER"
#E que tenha/nao tenha acesso na tela "Regra de cancelamento"
#Quando clicar na aba "REGRA DE LIBERAÇÃO"
#E
#Entao a aplicacao exibira/nao exibira a tela "Regra de Cancelamento - Editar"

#@CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAOSALDO_EDITAR
#Dado que tenha/nao tenha o direito "CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER"
#E que tenha/nao tenha acesso na tela "Regra de cancelamento"
#Quando clicar na aba "REGRA DE LIBERAÇÃO"
#E
#Entao a aplicacao exibira/nao exibira a tela "Regra de Cancelamento - Editar"

@CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRASDECANCELAMENTO_VER
Cenário: Validar direito CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER"
E que tenha/nao tenha acesso na tela "Regra de cancelamento"
Entao a aplicacao exibira/nao exibira o painel grid da tela crf "Dados da pesquisa"

#@SETUP_CANCELAMENTOS_LISTADEREGRA_EDITAR

@CONFIGURACOES_MOTIVOS_AJUSTES_VER
Cenario: Validar direito CONFIGURACOES_MOTIVOS_AJUSTES_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_MOTIVOS_AJUSTES_VER"
E que tenha/nao tenha acesso na tela "Motivo de ajuste"
Quando clicar no botao "Pesquisar"
Entao o sistema exibira/nao exibira a tela "Motivo de Ajuste"

@CONFIGURACOES_MOTIVOS_AJUSTES_EDITAR
Cenario: Validar direito CONFIGURACOES_MOTIVOS_AJUSTES_REMOVER
Dado que tenha/nao tenha o direito "CONFIGURACOES_MOTIVOS_AJUSTES_REMOVER"
E que tenha/nao tenha acesso na tela "Motivo de ajuste"
Quando clicar no botao "Pesquisar"
Entao clicar na acao "Editar"

@CONFIGURACOES_MOTIVOS_AJUSTES_INCLUIR
Cenario: Validar direito CONFIGURACOES_MOTIVOS_AJUSTES_INCLUIR
Dado que tenha/nao tenha o direito "CONFIGURACOES_MOTIVOS_AJUSTES_INCLUIR"
E que tenha/nao tenha acesso na tela "Motivo de ajuste"
Entao clicar na aba "Incluir"

@CONFIGURACOES_MOTIVOS_AJUSTES_REMOVER
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
