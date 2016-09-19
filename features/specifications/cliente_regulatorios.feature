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
E que tenha/nao tenha acesso na tela "DIRF"
Entao o sistema exibira/nao exibira a tela "DIRF"

@CLIENTES_REGULATORIOS_DIRF_DEMONSTRATIVO_VER
Cenario: Validar direito CLIENTES_REGULATORIOS_DIRF_DEMONSTRATIVO_VER
Dado que tenha/nao tenha o direito "CLIENTES_REGULATORIOS_DIRF_DEMONSTRATIVO_VER"
E que tenha/nao tenha acesso na tela "DIRF"
Quando clicar na aba "DEMONSTRATIVO"
Entao podera/nao podera acessar a aba "DEMONSTRATIVO"

@CLIENTES_REGULATORIOS_DIRF_SOLICITAR
Cenario: Validar direito CLIENTES_REGULATORIOS_DIRF_SOLICITAR
Dado que tenha/nao tenha o direito "CLIENTES_REGULATORIOS_DIRF_SOLICITAR"
E que tenha/nao tenha acesso na tela "DIRF"
Quando clicar na aba "SOLICITAÇÃO DA PRÉVIA"
Entao podera/nao podera acessar a aba "SOLICITAÇÃO DA PRÉVIA"
