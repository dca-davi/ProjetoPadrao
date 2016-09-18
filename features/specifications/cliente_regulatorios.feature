#language: pt

@CLIENTE_REGULATORIOS
Funcionalidade: Validar os direitos na tela Operacoes > Regularizações financeiras

Contexto:
Dado que eu faca login
E informe o nivel de hierarquia como "Grupo comercial"
E informe o EC "1018242187"

@CLIENTES_REGULATORIOS_DIRF_VER
Cenario: Validar direito CLIENTES_REGULATORIOS_DIRF_VER
Dado que tenha/nao tenha o direito "CLIENTES_REGULATORIOS_DIRF_VER"
E que tenha/nao tenha acesso na tela "DIRF"7
Entao o sistema exibira/nao exibira a tela "DIRF"
