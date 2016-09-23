#language: pt

@RELATORIOS_FINANCEIROS
Funcionalidade: Validar os direitos nos menus Relatorios > Relatorios financeiros

Contexto:
Dado que eu faca login

@RELATORIOS_RELATORIOSFINANCEIROS_RESUMOCONTABILSINTETICO_VER
Cenario: Validar direito RELATORIOS_RELATORIOSFINANCEIROS_RESUMOCONTABILSINTETICO_VER
Dado que tenha/nao tenha o direito "RELATORIOS_RELATORIOSFINANCEIROS_RESUMOCONTABILSINTETICO_VER"
E que tenha/nao tenha acesso na tela "Resumo contábil sintético"
Entao o sistema exibira/nao exibira a tela "Resumo Contábil Sintético"

@RELATORIOS_RELATORIOSFINANCEIROS_ENVIO_LIQUIDACAOSPB_VER
Cenario: Validar direito RELATORIOS_RELATORIOSFINANCEIROS_ENVIO_LIQUIDACAOSPB_VER
Dado que tenha/nao tenha o direito "RELATORIOS_RELATORIOSFINANCEIROS_ENVIO_LIQUIDACAOSPB_VER"
E que tenha/nao tenha acesso na tela "Liquidação financeira - SPB"
Entao o sistema exibira/nao exibira a tela "Liquidação financeira - SPB"

@RELATORIOS_FINANCEIROS_POSICAOPAGAMENTOSDEBITOSREJEITADOS_VER
Cenario: Validar direito RELATORIOS_FINANCEIROS_POSICAOPAGAMENTOSDEBITOSREJEITADOS_VER
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_POSICAOPAGAMENTOSDEBITOSREJEITADOS_VER"
E que tenha/nao tenha acesso na tela "Posição de pagamentos e débitos rejeitados"
Entao o sistema exibira/nao exibira a tela "Posição de pagamentos e débitos rejeitados"

@RELATORIOS_FINANCEIROS_PAGAMENTOSBAIXADOSSEMRETORNODOSBANCOS_VER
Cenario: Validar direito RELATORIOS_FINANCEIROS_PAGAMENTOSBAIXADOSSEMRETORNODOSBANCOS_VER
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_PAGAMENTOSBAIXADOSSEMRETORNODOSBANCOS_VER"
E que tenha/nao tenha acesso na tela "Pagamentos baixados sem retorno"
Entao o sistema exibira/nao exibira a tela "Pagamentos baixados sem retorno"

@RELATORIOS_FINANCEIROS_DEBITOSENVIADOSAOSBANCOS_VER
Cenario: Validar direito RELATORIOS_FINANCEIROS_DEBITOSENVIADOSAOSBANCOS_VER
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_DEBITOSENVIADOSAOSBANCOS_VER"
E que tenha/nao tenha acesso na tela "Débitos enviados"
Entao o sistema exibira/nao exibira a tela "Débitos enviados"

@RELATORIOS_DIVERGENCIASRESUMO_VER
Cenario: Validar direito RELATORIOS_DIVERGENCIASRESUMO_VER
Dado que tenha/nao tenha o direito "RELATORIOS_DIVERGENCIASRESUMO_VER"
E que tenha/nao tenha acesso na tela "Divergências do resumo financeiro"
Entao o sistema exibira/nao exibira a tela "Divergências"
