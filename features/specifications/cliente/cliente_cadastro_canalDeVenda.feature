#language: pt

@ALL @CLIENTES_CADASTRO_INFO_CANALDEVENDA
Funcionalidade: Validar os direitos na tela Cliente > Cadastro > Informacoes do cliente > Canal de Venda

Contexto:
Dado que eu faca login

@CLIENTES_CADASTRO_INFO_CANALDEVENDA_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@TESOURARIA_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@GESTAO_ECONOMICA_ANALISTA @CANAIS_ALTERNATIVOS_ANALISTA @CRM_COORDENADOR
@ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_CANALDEVENDA_VER
E informe o EC "1018242187"
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_CANALDEVENDA_VER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "CANAL DE VENDA"
Entao podera/nao podera acessar a aba "CANAL DE VENDA"

@CLIENTES_CAD_INFOCLI_MAQCANALVENDA_PLANOSCLI_ACAODESC_REMOVER
@BACKOFFICE_ANALISTA_FORNECEDOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CAD_INFOCLI_MAQCANALVENDA_PLANOSCLI_ACAODESC_REMOVER
E informe o EC "1018242187"
Dado que tenha/nao tenha o direito "CLIENTES_CAD_INFOCLI_MAQCANALVENDA_PLANOSCLI_ACAODESC_REMOVER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "CANAL DE VENDA"
E clicar na acao "Visualizar Planos do cliente"
Entao clicar na acao "Remover Desconto vigente/programado"

@CLIENTES_CAD_INFOCLIENTE_CANALVENDA_MAQSCLIENTE_ACAODESC_REMOVER
@BACKOFFICE_ANALISTA_FORNECEDOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CAD_INFOCLIENTE_CANALVENDA_MAQSCLIENTE_ACAODESC_REMOVER
E informe o EC "1018242187"
Dado que tenha/nao tenha o direito "CLIENTES_CAD_INFOCLIENTE_CANALVENDA_MAQSCLIENTE_ACAODESC_REMOVER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "CANAL DE VENDA"
E clicar na acao "Visualizar Maquinas do cliente"
Entao clicar na acao "Remover Desconto vigente/programado"

@CLIENTES_CAD_INFOCLIENTE_CANALVENDA_MAQUINASCLIENTE_ACAODESC_INCLUIR
@BACKOFFICE_ANALISTA_FORNECEDOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CAD_INFOCLIENTE_CANALVENDA_MAQUINASCLIENTE_ACAODESC_INCLUIR
E informe o EC "1018242187"
Dado que tenha/nao tenha o direito "CLIENTES_CAD_INFOCLIENTE_CANALVENDA_MAQUINASCLIENTE_ACAODESC_INCLUIR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "CANAL DE VENDA"
E clicar na aba "Incluir"
Entao podera/nao podera acessar a aba "Incluir"

@CLIENTES_CAD_INFOCLIENTE_MAQCANALVENDA_PLANOSCLIENTE_ACAODESC_INCLUIR
@BACKOFFICE_ANALISTA_FORNECEDOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CAD_INFOCLIENTE_MAQCANALVENDA_PLANOSCLIENTE_ACAODESC_INCLUIR
E informe o EC "1018242187"
Dado que tenha/nao tenha o direito "CLIENTES_CAD_INFOCLIENTE_MAQCANALVENDA_PLANOSCLIENTE_ACAODESC_INCLUIR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "CANAL DE VENDA"
E clicar na aba "Incluir"
Entao podera/nao podera acessar a aba "Incluir"

@CLIENTES_CADASTRO_INFO_CANALDEVENDA_EDITAR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_CANALDEVENDA_EDITAR
E informe o EC "1018242187"
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_CANALDEVENDA_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "CANAL DE VENDA"
E clicar na aba "Incluir"
Entao podera/nao podera acessar a aba "Incluir"

@CLIENTES_CADASTRO_INFO_CANALDEVENDA_LISTAR_MAQUINA_INCLUIR @R4
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_CANALDEVENDA_LISTAR_MAQUINA_INCLUIR
E informe o EC "1014766947"
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_CANALDEVENDA_LISTAR_MAQUINA_INCLUIR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "CANAL DE VENDA"
Entao se o EC nao tiver um plano o botao "Incluir plano" do frame "Planos do cliente" estara habilitado/desabilitado

@CLIENTES_CADASTRO_INFO_CANALDEVENDA_LISTAR_MAQUINA_EDITAR @R4
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_CANALDEVENDA_LISTAR_MAQUINA_EDITAR
E informe o EC "1018242187"
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_CANALDEVENDA_LISTAR_MAQUINA_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "CANAL DE VENDA"
Entao se o EC tiver um plano o botão "Editar" do frame "Planos do cliente" estara habilitado/desabilitado