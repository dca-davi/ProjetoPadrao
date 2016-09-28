#language: pt

@CONFIGURACOES_REGULARIZACOESFINANCEIRAS
Funcionalidade: Validar os direitos na tela Configurações > Regularizações financeiras > Precificacao

Contexto:
Dado que eu faca login

# Demis >>>
@CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER
Cenário: Validar direito CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER"
E que tenha/nao tenha acesso na tela "Regra de cancelamento"
Quando clicar na aba "REGRA DE LIBERAÇÃO"
Entao a aplicacao exibira/nao exibira o painel grid da tela crfrl "Dados da pesquisa"

@CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAOBLOQUEIO_EDITAR
Cenário: Validar direito CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER"
E que tenha/nao tenha acesso na tela "Regra de cancelamento"
Quando clicar na aba "REGRA DE LIBERAÇÃO"
Entao a aplicacao exibira/nao exibira a tela "Regra de Cancelamento - Editar"

@CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAOSALDO_EDITAR

@CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRASDECANCELAMENTO_VER
Cenário: Validar direito CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER"
E que tenha/nao tenha acesso na tela "Regra de cancelamento"
Entao a aplicacao exibira/nao exibira o painel grid da tela crf "Dados da pesquisa"
