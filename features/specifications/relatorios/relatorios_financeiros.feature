#language: pt

@ALL @RELATORIOS_FINANCEIROS
Funcionalidade: Validar os direitos nos menus Relatorios > Relatorios financeiros

Contexto:
Dado que eu faca login

@RELATORIOS_RELATORIOSFINANCEIROS_RESUMOCONTABILSINTETICO_VER
Cenario: CT.SEGINFO - [AUT] RELATORIOS_RELATORIOSFINANCEIROS_RESUMOCONTABILSINTETICO_VER
Dado que tenha/nao tenha o direito "RELATORIOS_RELATORIOSFINANCEIROS_RESUMOCONTABILSINTETICO_VER"
E que tenha/nao tenha acesso na tela "Resumo contábil sintético"
Entao o sistema exibira/nao exibira a tela "Resumo Contábil Sintético", "1"

@RELATORIOS_RELATORIOSFINANCEIROS_ENVIO_LIQUIDACAOSPB_VER
Cenario: CT.SEGINFO - [AUT] RELATORIOS_RELATORIOSFINANCEIROS_ENVIO_LIQUIDACAOSPB_VER
Dado que tenha/nao tenha o direito "RELATORIOS_RELATORIOSFINANCEIROS_ENVIO_LIQUIDACAOSPB_VER"
E que tenha/nao tenha acesso na tela "Liquidação financeira - SPB"
Entao o sistema exibira/nao exibira a tela "Liquidação financeira - SPB", "1"

@RELATORIOS_FINANCEIROS_POSICAOPAGAMENTOSDEBITOSREJEITADOS_VER
Cenario: CT.SEGINFO - [AUT] RELATORIOS_FINANCEIROS_POSICAOPAGAMENTOSDEBITOSREJEITADOS_VER
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_POSICAOPAGAMENTOSDEBITOSREJEITADOS_VER"
E que tenha/nao tenha acesso na tela "Lançamentos sem retorno"
Entao o sistema exibira/nao exibira a tela "Lançamentos sem retorno", "1"

@RELATORIOS_FINANCEIROS_PAGAMENTOSBAIXADOSSEMRETORNODOSBANCOS_VER
Cenario: CT.SEGINFO - [AUT] RELATORIOS_FINANCEIROS_PAGAMENTOSBAIXADOSSEMRETORNODOSBANCOS_VER
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_PAGAMENTOSBAIXADOSSEMRETORNODOSBANCOS_VER"
E que tenha/nao tenha acesso na tela "Pagamentos baixados sem retorno"
Entao o sistema exibira/nao exibira a tela "Pagamentos baixados sem retorno", "1"

@RELATORIOS_FINANCEIROS_DEBITOSENVIADOSAOSBANCOS_VER
Cenario: CT.SEGINFO - [AUT] RELATORIOS_FINANCEIROS_DEBITOSENVIADOSAOSBANCOS_VER
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_DEBITOSENVIADOSAOSBANCOS_VER"
E que tenha/nao tenha acesso na tela "Débitos enviados"
Entao o sistema exibira/nao exibira a tela "Débitos enviados", "1"

@RELATORIOS_DIVERGENCIASRESUMO_VER
Cenario: CT.SEGINFO - [AUT] RELATORIOS_DIVERGENCIASRESUMO_VER
Dado que tenha/nao tenha o direito "RELATORIOS_DIVERGENCIASRESUMO_VER"
E que tenha/nao tenha acesso na tela "Divergências do resumo financeiro"
Entao o sistema exibira/nao exibira a tela "Divergências", "1"

@RELATORIOS_FINANCEIROS_CONTABEIS_VER
Cenario: CT.SEGINFO - [AUT] RELATORIOS_FINANCEIROS_CONTABEIS_VER
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_CONTABEIS_VER"
E que tenha/nao tenha acesso na tela "Resumo contábil sintético"
Quando selecionar a data "27/09/2016" da pagina "Resumo contábil sintético", "0"
Entao clicar no botao "Pesquisar", "1"

@RELATORIOS_FINANCEIROS_PAGAMENTOSBAIXADOSSEMRETORNODOSBANCOS_EXPORTAR
Cenario: CT.SEGINFO - [AUT] RELATORIOS_FINANCEIROS_PAGAMENTOSBAIXADOSSEMRETORNODOSBANCOS_EXPORTAR
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_PAGAMENTOSBAIXADOSSEMRETORNODOSBANCOS_EXPORTAR"
E que tenha/nao tenha acesso na tela "Pagamentos baixados sem retorno"
Quando selecionar a data "27/09/2016" da pagina "Pagamentos baixados sem retorno", "0"
E clicar no botao "Pesquisar", "0"
Entao o botao "Exportar", "1" estara habilitado/desabilitado

@RELATORIOS_FINANCEIROS_GERENCIAMENTOCARTEIRAS_DEBITO_VER
Cenario: CT.SEGINFO - [AUT] RELATORIOS_FINANCEIROS_GERENCIAMENTOCARTEIRAS_DEBITO_VER
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_GERENCIAMENTOCARTEIRAS_DEBITO_VER"
E que tenha/nao tenha acesso na tela "Gerenciamento de carteiras"
E o sistema exibira/nao exibira a tela "Gerenciamento de carteiras", "0"
Entao clicar na aba "DÉBITOS", "1"

@RELATORIOS_FINANCEIROS_GERENCIAMENTOCARTEIRAS_COBRANCA_VER
Cenario: CT.SEGINFO - [AUT] RELATORIOS_FINANCEIROS_GERENCIAMENTOCARTEIRAS_COBRANCA_VER
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_GERENCIAMENTOCARTEIRAS_COBRANCA_VER"
E que tenha/nao tenha acesso na tela "Gerenciamento de carteiras"
E o sistema exibira/nao exibira a tela "Gerenciamento de carteiras", "0"
Entao clicar na aba "COBRANÇA", "0"

@RELATORIOS_FINANCEIROS_CONTABEIS_EXPORTAR
Cenario: CT.SEGINFO - [AUT] RELATORIOS_FINANCEIROS_CONTABEIS_EXPORTAR
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_CONTABEIS_EXPORTAR"
E que tenha/nao tenha acesso na tela "Resumo contábil sintético"
E selecionar a opcao "captura de vendas - vendas" da tela resumo contabil sintetico
Entao clicar no botao "Exportar" da tela captura de vendas

@RELATORIOS_FINANCEIROS_DEBITOSENVIADOSAOSBANCOS_EXPORTAR
Cenario: CT.SEGINFO - [AUT] RELATORIOS_FINANCEIROS_DEBITOSENVIADOSAOSBANCOS_EXPORTAR
Dado que tenha/nao tenha o direito "RELATORIOS_FINANCEIROS_DEBITOSENVIADOSAOSBANCOS_EXPORTAR"
E que tenha/nao tenha acesso na tela "Débitos enviados"
E informar "01/10/2016" no campo "data programada - de"
E informar "06/10/2016" no campo "data programada - ate"
Quando clicar no botao "Pesquisar", "0"
E o botao "Exportar", "1" estara habilitado/desabilitado

@RELATORIOS_RELATORIOSFINANCEIROS_LIQUIDACAOSPB_REJEITADO_EXPORTAR
Cenario: CT.SEGINFO - [AUT] RELATORIOS_RELATORIOSFINANCEIROS_LIQUIDACAOSPB_REJEITADO_EXPORTAR
Dado que tenha/nao tenha o direito "RELATORIOS_RELATORIOSFINANCEIROS_LIQUIDACAOSPB_REJEITADO_EXPORTAR"
E que tenha/nao tenha acesso na tela "Liquidação financeira - SPB"
E clicar na aba "REJEITADOS PÓS GRADE", "0"
Entao o botao "Exportar", "1" estara habilitado/desabilitado

@RELATORIOS_RELATORIOSFINANCEIROS_RESUMOCONTABILSINTETICO_EXPORTAR
Cenario: CT.SEGINFO - [AUT] RELATORIOS_RELATORIOSFINANCEIROS_RESUMOCONTABILSINTETICO_EXPORTAR
Dado que tenha/nao tenha o direito "RELATORIOS_RELATORIOSFINANCEIROS_RESUMOCONTABILSINTETICO_EXPORTAR"
E que tenha/nao tenha acesso na tela "Resumo contábil sintético"
Quando selecionar a data "22/02/2017" da pagina "Resumo contábil sintético", "0"
E clicar no botao "Pesquisar", "0"
E clicar no valor bruto
E o botao "Pesquisar", "0" estara habilitado/desabilitado
Entao o botao "Exportar", "1" estara habilitado/desabilitado

@RELATORIOS_RELATORIOSFINANCEIROS_LANCAMENTOSSEMRETORNO_VER @R4
Cenario: CT.SEGINFO - [AUT] RELATORIOS_RELATORIOSFINANCEIROS_LANCAMENTOSSEMRETORNO_VER
Dado que tenha/nao tenha o direito "RELATORIOS_RELATORIOSFINANCEIROS_LANCAMENTOSSEMRETORNO_VER"
E que tenha/nao tenha acesso na tela "Lançamentos sem retorno"
Entao o sistema exibira/nao exibira a tela "Lançamentos sem retorno", "1"

@RELATORIOS_RELATORIOSFINANCEIROS_LANCAMENTOSSEMRETORNO_EXPORTAR @R4
Cenario: CT.SEGINFO - [AUT] RELATORIOS_RELATORIOSFINANCEIROS_LANCAMENTOSSEMRETORNO_EXPORTAR
Dado que tenha/nao tenha o direito "RELATORIOS_RELATORIOSFINANCEIROS_LANCAMENTOSSEMRETORNO_EXPORTAR"
E que tenha/nao tenha acesso na tela "Lançamentos sem retorno"
Entao o botao "Exportar", "1" estara habilitado/desabilitado
