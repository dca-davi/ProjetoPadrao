#language: pt
#encoding: utf-8

@ALL @CONFIGURACOES_OFERTAS
Funcionalidade: Validar os direitos na tela Configurações > Ofertas

Contexto:
Dado que eu faca login

@CONFIGURACOES_OFERTAS_GOLDLIST_VER @R4
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_OFERTAS_GOLDLIST_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_OFERTAS_GOLDLIST_VER"
E que tenha/nao tenha acesso na tela "Goldlist"
Entao o sistema exibira/nao exibira a tela "Goldlist"

@CONFIGURACOES_OFERTAS_GOLDLIST_REMOVER @R4
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_OFERTAS_GOLDLIST_REMOVER
Dado que tenha/nao tenha o direito "CONFIGURACOES_OFERTAS_GOLDLIST_REMOVER"
E que tenha/nao tenha acesso na tela "Goldlist"
Quando clicar no botao "Pesquisar", "0"
Entao clicar na acao "Remover", "1"

@CONFIGURACOES_OFERTAS_GOLDLIST_INCLUIR @R4
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_OFERTAS_GOLDLIST_INCLUIR
Dado que tenha/nao tenha o direito "CONFIGURACOES_OFERTAS_GOLDLIST_INCLUIR"
E que tenha/nao tenha acesso na tela "Goldlist"
Quando clicar na aba "INCLUIR", "0"
Entao podera/nao podera acessar a aba "INCLUIR"
