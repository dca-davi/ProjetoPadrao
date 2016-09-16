#language: pt

@CLIENTES_CADASTRO_DOMICILIO_BANCARIO
Funcionalidade: Validar os direitos na tela Cliente > Cadastro > Informacoes do cliente > Domicilio Bancario

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_VER
Cenario: Validar direito CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_VER
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_VER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Domicílio Bancário"
Entao podera/nao podera acessar a Tela de pesquisa

@CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_SOLICITAR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_SOLICITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_SOLICITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Domicílio Bancário"
Entao o link "INCLUIR" deve estar habilitado/desabilitado

@CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_APROVADOR_EDITAR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_APROVADOR_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_DOMICILIOBANCARIO_APROVADOR_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Domicílio Bancário"
Entao o link "CONFIGURAR" deve estar habilitado/desabilitado
