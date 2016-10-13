#language: pt

@ALL @CLIENTE_DEMANDAS
Funcionalidade: Validar os direitos na tela Cliente > Cadastro > Informacoes do cliente > Canal de Venda

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTE_DEMANDAS_ABERTURADEMANDA_VER
Cenario: Validar direito CLIENTE_DEMANDAS_ABERTURADEMANDA_VER
Dado que tenha/nao tenha o direito "CLIENTE_DEMANDAS_ABERTURADEMANDA_VER"
E que tenha/nao tenha acesso na tela "Abertura de demanda"
Entao o sistema exibira/nao exibira a tela "Abertura de demanda"

@CLIENTE_DEMANDAS_ABERTURADEMANDA_INCLUIR
Cenario: Validar direito CLIENTE_DEMANDAS_ABERTURADEMANDA_INCLUIR
Dado que tenha/nao tenha o direito "CLIENTE_DEMANDAS_ABERTURADEMANDA_INCLUIR"
E que tenha/nao tenha acesso na tela "Abertura de demanda"
Entao o botao "Continuar" devera estar habilitado/desabilitado
