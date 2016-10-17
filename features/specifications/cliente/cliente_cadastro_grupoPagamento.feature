#language: pt

@ALL @CLIENTE_CADASTRO_GRUPO_PAGAMENTO
Funcionalidade: Validar os direitos na tela Operacoes > Regularizações financeiras

Contexto:
Dado que eu faca login
E informe o nivel de hierarquia como "Grupo de pagamento"
E informe o EC "1018242187"

@CLIENTES_CADASTRO_GRUPODEPAGAMENTO_DADOSCONTATO_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CRM_COORDENADOR
Cenario: Validar direito CLIENTES_CADASTRO_GRUPODEPAGAMENTO_DADOSCONTATO_VER
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_GRUPODEPAGAMENTO_DADOSCONTATO_VER"
Quando clicar na aba "Dados de Contato"
Entao podera/nao podera acessar a aba "Dados de Contato"

@CLIENTES_CADASTRO_GRUPODEPAGAMENTO_DADOSCONTATO_EDITAR
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CRM_COORDENADOR
Cenario: Validar direito CLIENTES_CADASTRO_GRUPODEPAGAMENTO_DADOSCONTATO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_GRUPODEPAGAMENTO_DADOSCONTATO_EDITAR"
Quando clicar na aba "Dados de Contato"
Entao clicar na acao "Editar Dados de contato"
