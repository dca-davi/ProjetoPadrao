#language: pt
#encoding: utf-8

@ALL @CONFIGURACOES_OFERTAS
Funcionalidade: Validar os direitos na tela Configuracoes > Negociacao de MDR

Contexto:
Dado que eu faca login

@CONFIGURACOES_NEGOCIACAO_MDR_GOLDLIST_VER @R4
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_NEGOCIACAO_MDR_GOLDLIST_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_NEGOCIACAO_MDR_GOLDLIST_VER"
E que tenha/nao tenha acesso na tela "Goldlist_MDR"
Entao o sistema exibira/nao exibira a tela "Goldlist", "1"

@CONFIGURACOES_NEGOCIACAO_MDR_GOLDLIST_INCLUIR @R4
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_NEGOCIACAO_MDR_GOLDLIST_INCLUIR
Dado que tenha/nao tenha o direito "CONFIGURACOES_NEGOCIACAO_MDR_GOLDLIST_INCLUIR"
E que tenha/nao tenha acesso na tela "Goldlist_MDR"
Quando clicar na aba "INCLUIR", "0"
Entao podera/nao podera acessar a aba "INCLUIR"
