#language: pt

@CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTO
Funcionalidade: Validar os direitos na tela Cliente > Cadastro > Informacoes do cliente > Tipo de Pagamento

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTO_VER
Cenario: Validar direito CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTO_VER
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTO_VER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Tipo de pagamento"
Entao podera/nao podera acessar a aba "Tipo de pagamento"

@CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTOAMEX_EDITAR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTOAMEX_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_TIPODEPAGAMENTOAMEX_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Tipo de pagamento"
E selecionar um item "AMEX"
E clicar no botao "Editar" do frame "Dados do tipo de pagamento"
Entao o campo Codigo Amex devera estar habilitado/desabilitado
