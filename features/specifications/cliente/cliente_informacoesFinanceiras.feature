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
