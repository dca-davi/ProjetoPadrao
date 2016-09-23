#language: pt
#encoding: utf-8

@OPERACOES_TRAVA
Funcionalidade: Validar os direitos na tela Operacoes > Trava

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@OPERACOES_TRAVA_PRAZOVENCIDO_VER
Cenario: Validar direito OPERACOES_TRAVA_PRAZOVENCIDO_VER
Dado que tenha/nao tenha o direito "OPERACOES_TRAVA_PRAZOVENCIDO_VER"
E que tenha/nao tenha acesso na tela "Trava com prazo vencido"
Entao o sistema exibira/nao exibira a tela "Trava com Prazo Vencido"

@OPERACOES_TRAVA_PRAZOVENCIDO_EXPORTAR
Cenario: Validar direito OPERACOES_TRAVA_PRAZOVENCIDO_EXPORTAR
Dado que tenha/nao tenha o direito "OPERACOES_TRAVA_PRAZOVENCIDO_EXPORTAR"
E que tenha/nao tenha acesso na tela "Trava com prazo vencido"
Entao o botao "Exportar" devera estar habilitado/desabilitado

@OPERACOES_TRAVA_REJEICAO_VER
Cenario: Validar direito OPERACOES_TRAVA_REJEICAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_TRAVA_REJEICAO_VER"
E que tenha/nao tenha acesso na tela "Rejeições"
Entao o sistema exibira/nao exibira a tela "Rejeições"

@OPERACOES_TRAVA_REJEICAO_RELATORIO_EXPORTAR
Cenario: Validar direito OPERACOES_TRAVA_REJEICAO_RELATORIO_EXPORTAR
Dado que tenha/nao tenha o direito "OPERACOES_TRAVA_REJEICAO_RELATORIO_EXPORTAR"
E que tenha/nao tenha acesso na tela "Rejeições"
Quando clicar no botao "Pesquisar"
Entao o botao "Exportar" devera estar habilitado/desabilitado

@OPERACOES_TRAVA_TRAVADESTRAVACLIENTE_VER
Cenario: Validar direito OPERACOES_TRAVA_TRAVADESTRAVACLIENTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_TRAVA_TRAVADESTRAVACLIENTE_VER"
E que tenha/nao tenha acesso na tela "Trava e destrava cliente"
Entao o sistema exibira/nao exibira a tela "Trava / Destrava Cliente - Pesquisar"

@OPERACOES_TRAVA_MOVHISTORICOCIP_VER
Cenario: Validar direito OPERACOES_TRAVA_MOVHISTORICOCIP_VER
Dado que tenha/nao tenha o direito "OPERACOES_TRAVA_MOVHISTORICOCIP_VER"
E que tenha/nao tenha acesso na tela "Movimento CIP"
Entao o sistema exibira/nao exibira a tela "Movimento CIP (Varredura)"
