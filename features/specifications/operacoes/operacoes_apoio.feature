#language: pt
#encoding: utf-8

@ALL @OPERACOES_APOIO
Funcionalidade: Validar os direitos na tela Operacoes > Apoio

Contexto:
Dado que eu faca login

@OPERACOES_APOIO_RECUPERACAO_ANTECIPACAOVENDAS_DISPONIVEL_EDITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_APOIO_RECUPERACAO_ANTECIPACAOVENDAS_DISPONIVEL_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_APOIO_RECUPERACAO_ANTECIPACAOVENDAS_DISPONIVEL_EDITAR"
E que tenha/nao tenha acesso na tela "ARV"
E clicar na acao "Editar"
Entao o botao "Sim" estara habilitado/desabilitado
