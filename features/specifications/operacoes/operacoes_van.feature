#language: pt
#encoding: utf-8

@OPERACOES_VAN
Funcionalidade: Validar os direitos na tela Operacoes > Van

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@OPERACOES_VAN_HABILITACAODESABILITACAO_VER
Cenario: Validar direito OPERACOES_VAN_HABILITACAODESABILITACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_VAN_HABILITACAODESABILITACAO_VER"
E que tenha/nao tenha acesso na tela "Habilitação e desabilitação"
Quando selecionar o combobox "Bandeira" e a opcao "AMEX"
Entao clicar no botao "Pesquisar"
