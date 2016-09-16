#language: pt

@CLIENTES_CADASTRO_INFO_SERVICOS
Funcionalidade: Validar os direitos na tela Cliente > Cadastro > Informacoes do cliente > Canal de Venda

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTES_CADASTRO_INFO_SERVICOS_VER
Cenario: Validar direito CLIENTES_CADASTRO_INFO_SERVICOS_VER
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SERVICOS_VER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Serviços"
Entao podera/nao podera acessar a aba "Serviços"
