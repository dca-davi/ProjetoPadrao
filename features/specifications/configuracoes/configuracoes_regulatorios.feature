#language: pt

@ALL @CONFIGURACOES_REGULATORIOS
Funcionalidade: Validar os direitos na tela Configuracoes > Regulatorios

Contexto:
Dado que eu faca login

@CONFIGURACOES_REGULATORIOS_DECRED_VER
@CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_REGULATORIOS_DECRED_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_REGULATORIOS_DECRED_VER"
E que tenha/nao tenha acesso na tela "DECRED"
Entao o sistema exibira/nao exibira a tela "DECRED"

@CONFIGURACOES_REGULATORIOS_SEFAZ_VER
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_REGULATORIOS_DECRED_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_REGULATORIOS_DECRED_VER"
E que tenha/nao tenha acesso na tela "SEFAZ"
Entao o sistema exibira/nao exibira a tela "SEFAZ"

@CONFIGURACOES_REGULATORIOS_SEFAZ_EDITAR
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_REGULATORIOS_SEFAZ_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_REGULATORIOS_SEFAZ_EDITAR"
E que tenha/nao tenha acesso na tela "SEFAZ"
Quando selecionar Tipo de inclusao "Upload"
E informar "809153" no campo "Protocolo"
E clicar no botao "Buscar"
Entao clicar na acao "Editar"

@CONFIGURACOES_REGULATORIOS_SEFAZ_APROVAR
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_REGULATORIOS_SEFAZ_APROVAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_REGULATORIOS_SEFAZ_APROVAR"
E que tenha/nao tenha acesso na tela "SEFAZ"
Quando selecionar Tipo de inclusao "Upload"
E informar "809153" no campo "Protocolo"
E clicar no botao "Buscar"
Entao clicar na acao "Aprovar"
