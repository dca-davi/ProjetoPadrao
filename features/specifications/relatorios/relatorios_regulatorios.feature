#language: pt

@ALL @RELATORIOS_REGULATORIOS
Funcionalidade: Validar os direitos nos menus Relatorios > Regulatorios

Contexto:
Dado que eu faca login

@RELATORIOS_REGULATORIOS_BACEN_BILATERAL_VER @R4
Cenario: CT.SEGINFO - [AUT] RELATORIOS_REGULATORIOS_BACEN_BILATERAL_VER
Dado que tenha/nao tenha o direito "RELATORIOS_REGULATORIOS_BACEN_BILATERAL_VER"
E que tenha/nao tenha acesso na tela "Bacen bilateral"
Entao o sistema exibira/nao exibira a tela "Bacen bilateral", "1"
