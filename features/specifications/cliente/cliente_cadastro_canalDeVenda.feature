#language: pt

@ALL @CLIENTES_CADASTRO_INFO_CANALDEVENDA
Funcionalidade: Validar os direitos na tela Cliente > Cadastro > Informacoes do cliente > Canal de Venda

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTES_CADASTRO_INFO_CANALDEVENDA_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CLIENTES_CADASTRO_INFO_CANALDEVENDA_VER
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_CANALDEVENDA_VER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "CANAL DE VENDA"
Entao podera/nao podera acessar a aba "CANAL DE VENDA"
