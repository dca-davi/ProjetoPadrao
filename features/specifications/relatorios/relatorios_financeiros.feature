#language: pt

@ALL @RELATORIOS_FINANCEIROS
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

@RELATORIOS_FINANCEIROS_CONTABEIS_VER
Cenario: Validar direito RELATORIOS_FINANCEIROS_CONTABEIS_VER
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_CONTABEIS_VER"
E que tenha/nao tenha acesso na tela "Resumo contábil sintético"
Quando selecionar a data "27/09/2016" da pagina "Resumo contábil sintético"
Entao clicar no botao "Pesquisar"

@RELATORIOS_FINANCEIROS_PAGAMENTOSBAIXADOSSEMRETORNODOSBANCOS_EXPORTAR
Cenario: Validar direito RELATORIOS_FINANCEIROS_PAGAMENTOSBAIXADOSSEMRETORNODOSBANCOS_EXPORTAR
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_PAGAMENTOSBAIXADOSSEMRETORNODOSBANCOS_EXPORTAR"
E que tenha/nao tenha acesso na tela "Pagamentos baixados sem retorno"
Quando selecionar a data "27/09/2016" da pagina "Pagamentos baixados sem retorno"
E clicar no botao "Pesquisar"
Entao o botao "Exportar" estara habilitado/desabilitado


@RELATORIOS_FINANCEIROS_GERENCIAMENTOCARTEIRAS_DEBITO_VER
Cenario: Validar direito RELATORIOS_FINANCEIROS_GERENCIAMENTOCARTEIRAS_DEBITO_VER
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_GERENCIAMENTOCARTEIRAS_DEBITO_VER"
E que tenha/nao tenha acesso na tela "Gerenciamento de carteiras"
E o sistema exibira/nao exibira a tela "Gerenciamento de carteiras"
Entao clicar na aba "DÉBITOS"

@RELATORIOS_FINANCEIROS_GERENCIAMENTOCARTEIRAS_COBRANCA_VER
Cenario: Validar direito RELATORIOS_FINANCEIROS_GERENCIAMENTOCARTEIRAS_COBRANCA_VER
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_GERENCIAMENTOCARTEIRAS_COBRANCA_VER"
E que tenha/nao tenha acesso na tela "Gerenciamento de carteiras"
E o sistema exibira/nao exibira a tela "Gerenciamento de carteiras"
Entao clicar na aba "COBRANÇA"

@RELATORIOS_FINANCEIROS_CONTABEIS_EXPORTAR
Cenario: Validar direito RELATORIOS_FINANCEIROS_CONTABEIS_EXPORTAR
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_CONTABEIS_EXPORTAR"
E que tenha/nao tenha acesso na tela "Resumo contábil sintético"
E selecionar a opcao "captura de vendas - vendas" da tela resumo contabil sintetico
Entao clicar no botao "Exportar" da tela captura de vendas

@RELATORIOS_FINANCEIROS_DEBITOSENVIADOSAOSBANCOS_EXPORTAR
Cenario: Validar direito RELATORIOS_FINANCEIROS_DEBITOSENVIADOSAOSBANCOS_EXPORTAR
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_DEBITOSENVIADOSAOSBANCOS_EXPORTAR"
E que tenha/nao tenha acesso na tela "Débitos enviados"
E informar "01/10/2016" no campo "data programada - de"
E informar "06/10/2016" no campo "data programada - ate"
Quando clicar no botao "Pesquisar"
E o botao "Exportar" estara habilitado/desabilitado

@RELATORIOS_RELATORIOSFINANCEIROS_LIQUIDACAOSPB_REJEITADO_EXPORTAR
Cenario: Validar direito RELATORIOS_RELATORIOSFINANCEIROS_LIQUIDACAOSPB_REJEITADO_EXPORTAR
Dado que tenha/nao tenha o direito "RELATORIOS_RELATORIOSFINANCEIROS_LIQUIDACAOSPB_REJEITADO_EXPORTAR"
E que tenha/nao tenha acesso na tela "Liquidação financeira - SPB"
E clicar na aba "REJEITADOS PÓS GRADE"
Entao o botao "Exportar" estara habilitado/desabilitado

@RELATORIOS_RELATORIOSFINANCEIROS_RESUMOCONTABILSINTETICO_EXPORTAR
Cenario: Validar direito RELATORIOS_RELATORIOSFINANCEIROS_RESUMOCONTABILSINTETICO_EXPORTAR
Dado que tenha/nao tenha o direito "RELATORIOS_RELATORIOSFINANCEIROS_RESUMOCONTABILSINTETICO_EXPORTAR"
E que tenha/nao tenha acesso na tela "Resumo contábil sintético"
E clicar no valor bruto
E o botao "Pesquisar" estara habilitado/desabilitado
Entao o botao "Exportar" estara habilitado/desabilitado
