#language: pt

@CLIENTES_CADASTRO_DESCONTOS
Funcionalidade: Validar os direitos na tela Cliente > Cadastro > Informacoes do cliente > Descontos

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTES_CADASTRO_INFO_DESCONTOS_PESQUISAR_VER
Cenario: Validar direito CLIENTES_CADASTRO_INFO_DESCONTOS_PESQUISAR_VER
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_DESCONTOS_PESQUISAR_VER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Descontos"
Entao podera/nao podera acessar a Tela de pesquisa

@CLIENTES_CADASTRO_INFO_DESCONTOS_INCLUIR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_DESCONTOS_INCLUIR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_DESCONTOS_INCLUIR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Descontos"
Entao o link "Incluir" deve estar habilitado/desabilitado

@CLIENTES_CADASTRO_INFO_DESCONTOS_ENCERRAR_REMOVER
Cenario: Validar direito CLIENTES_CADASTRO_INFO_DESCONTOS_ENCERRAR_REMOVER
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_DESCONTOS_ENCERRAR_REMOVER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Descontos"
Entao o link "Encerrar" deve estar habilitado/desabilitado
