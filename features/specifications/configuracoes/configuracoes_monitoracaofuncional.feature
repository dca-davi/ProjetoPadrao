#language: pt

@ALL @CONFIGURACOES_MONITORACAOFUNCIONAL
Funcionalidade: Validar os direitos na tela Configurações > Monitoração Funcional

Contexto:
Dado que eu faca login

@CONFIGURACOES_MONITORACAOFUNCIONAL_REPROCESSAMENTO_VER
Cenario: Validar direito CONFIGURACOES_MONITORACAOFUNCIONAL_REPROCESSAMENTO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_MONITORACAOFUNCIONAL_REPROCESSAMENTO_VER"
E que tenha/nao tenha acesso na tela "Reprocessamento_monitoraçãoFuncional"
Entao o sistema exibira/nao exibira a tela "Reprocessamento"
