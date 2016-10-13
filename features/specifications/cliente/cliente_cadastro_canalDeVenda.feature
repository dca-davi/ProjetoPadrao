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

@CLIENTES_CAD_INFOCLI_MAQCANALVENDA_PLANOSCLI_ACAODESC_REMOVER
Cenario: Validar direito CLIENTES_CAD_INFOCLI_MAQCANALVENDA_PLANOSCLI_ACAODESC_REMOVER
Dado que tenha/nao tenha o direito "CLIENTES_CAD_INFOCLI_MAQCANALVENDA_PLANOSCLI_ACAODESC_REMOVER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "CANAL DE VENDA"
E clicar na acao "Visualizar Planos do cliente"
Entao clicar na acao "Remover Desconto vigente/programado"

@CLIENTES_CAD_INFOCLIENTE_CANALVENDA_MAQSCLIENTE_ACAODESC_REMOVER
Cenario: Validar direito CLIENTES_CAD_INFOCLIENTE_CANALVENDA_MAQSCLIENTE_ACAODESC_REMOVER
Dado que tenha/nao tenha o direito "CLIENTES_CAD_INFOCLIENTE_CANALVENDA_MAQSCLIENTE_ACAODESC_REMOVER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "CANAL DE VENDA"
E clicar na acao "Visualizar Maquinas do cliente"
Entao clicar na acao "Remover Desconto vigente/programado"

@CLIENTES_CAD_INFOCLIENTE_CANALVENDA_MAQUINASCLIENTE_ACAODESC_INCLUIR
Cenario: Validar direito CLIENTES_CAD_INFOCLIENTE_CANALVENDA_MAQUINASCLIENTE_ACAODESC_INCLUIR
Dado que tenha/nao tenha o direito "CLIENTES_CAD_INFOCLIENTE_CANALVENDA_MAQUINASCLIENTE_ACAODESC_INCLUIR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "CANAL DE VENDA"
E clicar na aba "Incluir"
Entao podera/nao podera acessar a aba "Incluir"

@CLIENTES_CAD_INFOCLIENTE_MAQCANALVENDA_PLANOSCLIENTE_ACAODESC_INCLUIR
Cenario: Validar direito CLIENTES_CAD_INFOCLIENTE_MAQCANALVENDA_PLANOSCLIENTE_ACAODESC_INCLUIR
Dado que tenha/nao tenha o direito "CLIENTES_CAD_INFOCLIENTE_MAQCANALVENDA_PLANOSCLIENTE_ACAODESC_INCLUIR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "CANAL DE VENDA"
E clicar na aba "Incluir"
Entao podera/nao podera acessar a aba "Incluir"

@CLIENTES_CADASTRO_INFO_CANALDEVENDA_EDITAR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_CANALDEVENDA_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_CANALDEVENDA_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "CANAL DE VENDA"
E clicar na aba "Incluir"
Entao podera/nao podera acessar a aba "Incluir"
