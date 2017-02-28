#language: pt

@ALL @CONFIGURACOES_BANCO
Funcionalidade: Validar os direitos nos menus Configuracoes > Bancos

Contexto:
Dado que eu faca login

@CONFIGURACOES_BANCOS_DOMICILIO_VER @R4
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_BANCOS_DOMICILIO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_BANCOS_DOMICILIO_VER"
E que tenha/nao tenha acesso na tela "Domicílios"
Entao o sistema exibira/nao exibira a tela "Domicílios", "1"

@CONFIGURACOES_BANCOS_DOMICILIO_EDITAR @R4
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_BANCOS_DOMICILIO_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_BANCOS_DOMICILIO_EDITAR"
E que tenha/nao tenha acesso na tela "Domicílios"
Entao clicar na acao "Editar", "1"
