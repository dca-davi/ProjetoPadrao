#language: pt

@CLIENTES_INFORMACOESFINANCEIRAS
Funcionalidade: Validar os direitos na tela Cliente > Extratos > Resumo Financeiro

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTES_INFORMACOESFINANCEIRAS_VER
Cenario: Validar direito CLIENTES_INFORMACOESFINANCEIRAS_VER
Dado que tenha/nao tenha o direito "CLIENTES_INFORMACOESFINANCEIRAS_VER"
E que tenha/nao tenha acesso na tela "Resumo financeiro"
Entao o sistema exibira/nao exibira a tela "Resumo financeiro"

@CLIENTES_INFORMACOESFINANCEIRAS_BUSCAAVANCADA_VER
Cenario: Validar direito CLIENTES_INFORMACOESFINANCEIRAS_BUSCAAVANCADA_VER
Dado que tenha/nao tenha o direito "CLIENTES_INFORMACOESFINANCEIRAS_BUSCAAVANCADA_VER"
E que tenha/nao tenha acesso na tela "Resumo financeiro"
Entao o sistema exibira/nao exibira a tela "Resumo financeiro"

@CLIENTES_INFORMACOESFINANCEIRAS_EXPORTAR
Cenario: Validar direito CLIENTES_INFORMACOESFINANCEIRAS_EXPORTAR
Dado que tenha/nao tenha o direito "CLIENTES_INFORMACOESFINANCEIRAS_EXPORTAR"
E que tenha/nao tenha acesso na tela "Resumo financeiro"
Quando selecionar um valor na tabela de Informacoes financeiras
Entao o botao "Exportar" devera estar habilitado/desabilitado

@CLIENTES_INFORMACOESFINANCEIRAS_INTERCAMBIO_VER
Cenario: Validar direito CLIENTES_INFORMACOESFINANCEIRAS_INTERCAMBIO_VER
Dado que tenha/nao tenha o direito "CLIENTES_INFORMACOESFINANCEIRAS_INTERCAMBIO_VER"
E que tenha/nao tenha acesso na tela "Resumo financeiro"
E selecionar o item "vendas" de "hoje"
Quando clicar no item em consolidado de vendas


@CLIENTES_INFORMACOESFINANCEIRAS_VENDASCONSOLIDADAS_INTERCAMBIO_VER
Cenario: Validar direito CLIENTES_INFORMACOESFINANCEIRAS_VENDASCONSOLIDADAS_INTERCAMBIO_VER
Dado que tenha/nao tenha o direito "CLIENTES_INFORMACOESFINANCEIRAS_VENDASCONSOLIDADAS_INTERCAMBIO_VER"
E que tenha/nao tenha acesso na tela "Resumo financeiro"
E selecionar o item "vendas" de "ontem"
Quando clicar no item em consolidado de vendas
E Expandir o campo da transação de venda
Então Validar o frame "Valor do intercâmbio - detalhado"
