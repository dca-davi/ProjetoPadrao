#language: pt

@ALL @CLIENTES_CADASTRO_HISTORICO
Funcionalidade: Validar os direitos na tela Cliente > Cadastro > Informacoes do cliente > Historico

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTES_HISTORICOALTERACOES_CADASTROCLIENTE_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CLIENTES_HISTORICOALTERACOES_CADASTROCLIENTE_VER
Dado que tenha/nao tenha o direito "CLIENTES_HISTORICOALTERACOES_CADASTROCLIENTE_VER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Histórico"
Entao podera/nao podera acessar a aba "Histórico"
