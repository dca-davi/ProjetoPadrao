#language: pt

@ALL @RELATORIOS_CREDITOESPECIALIZADO
Funcionalidade: Validar os direitos nos menus Relatorios > Credito Especializado

Contexto:
Dado que eu faca login

@RELATORIOS_CREDITOESPECIALIZADO_MANUTENCOESHABILITACAOCAIXA_VER @R4
Cenario: CT.SEGINFO - [AUT] RELATORIOS_CREDITOESPECIALIZADO_MANUTENCOESHABILITACAOCAIXA_VER
Dado que tenha/nao tenha o direito "RELATORIOS_CREDITOESPECIALIZADO_MANUTENCOESHABILITACAOCAIXA_VER"
E que tenha/nao tenha acesso na tela "Manutenções habilitação Caixa"
Entao o sistema exibira/nao exibira a tela "Manutenções habilitação Caixa"

@RELATORIOS_CREDITOESPECIALIZADO_MANUTENCOESHABILITACAOCAIXA_EXPORTAR @R4
Cenario: CT.SEGINFO - [AUT] RELATORIOS_CREDITOESPECIALIZADO_MANUTENCOESHABILITACAOCAIXA_EXPORTAR
Dado que tenha/nao tenha o direito "RELATORIOS_CREDITOESPECIALIZADO_MANUTENCOESHABILITACAOCAIXA_EXPORTAR"
E que tenha/nao tenha acesso na tela "Manutenções habilitação Caixa"
Entao o botao "Exportar" estara habilitado/desabilitado