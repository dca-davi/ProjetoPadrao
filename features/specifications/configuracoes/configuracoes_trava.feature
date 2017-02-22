#language: pt
#encoding: utf-8

@ALL @CONFIGURACOES_TRAVA
Funcionalidade: Validar os direitos na tela Configuracoes > Trava

Contexto:
Dado que eu faca login

@CONFIGURACOES_TRAVA_EXCECAO_VER @R4
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_TRAVA_EXCECAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_TRAVA_EXCECAO_VER"
E que tenha/nao tenha acesso na tela "Trava_Excecao"
Entao o sistema exibira/nao exibira a tela "Exceção"

@CONFIGURACOES_TRAVA_EXCECAO_EDITAR @R4
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_TRAVA_EXCECAO_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_TRAVA_EXCECAO_EDITAR"
E que tenha/nao tenha acesso na tela "Trava_Excecao"
Quando clicar na aba "INCLUIR"
Entao podera/nao podera acessar a aba "INCLUIR"

@CONFIGURACOES_TRAVA_PRECIFICACAO_VER @R4
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_TRAVA_PRECIFICACAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_TRAVA_PRECIFICACAO_VER"
E que tenha/nao tenha acesso na tela "Precificação_Trava"
Entao o sistema exibira/nao exibira a tela "Precificação"

@CONFIGURACOES_TRAVA_PRECIFICACAO_EDITAR @R4
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_TRAVA_PRECIFICACAO_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_TRAVA_PRECIFICACAO_EDITAR"
E que tenha/nao tenha acesso na tela "Precificação_Trava"
E informar "ITAU" no campo "Banco"
E clicar no botao "Pesquisar"
Entao o botao "Editar" devera estar habilitado/desabilitado

@CONFIGURACOES_TRAVA_EXCECAO_COBRANCA_VER @R4
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_TRAVA_EXCECAO_COBRANCA_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_TRAVA_EXCECAO_COBRANCA_VER"
E que tenha/nao tenha acesso na tela "Trava_Excecao"
Quando clicar na aba "Cobrança"
Entao podera/nao podera acessar a aba "Cobrança"

@CONFIGURACOES_TRAVA_EXCECAO_COBRANCA_EDITAR @R4
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_TRAVA_EXCECAO_COBRANCA_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_TRAVA_EXCECAO_COBRANCA_EDITAR"
E que tenha/nao tenha acesso na tela "Trava_Excecao"
Quando clicar na aba "Cobrança"
E clicar na aba "Incluir Cobrança"
Entao podera/nao podera acessar a aba "INCLUIR"

@CONFIGURACOES_TRAVA_EXCECAO_COBRANCA_REMOVER @R4
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_TRAVA_EXCECAO_COBRANCA_REMOVER
Dado que tenha/nao tenha o direito "CONFIGURACOES_TRAVA_EXCECAO_COBRANCA_REMOVER"
E que tenha/nao tenha acesso na tela "Trava_Excecao"
Quando clicar na aba "Cobrança"
E selecionar "Futura" do campo "Status"
E clicar no botao "Pesquisar"
Entao o botao "Cancelar exceção" devera estar habilitado/desabilitado