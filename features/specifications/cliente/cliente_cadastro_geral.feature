#language: pt

@ALL @CLIENTES_CADASTRO_GERAL
Funcionalidade: Validar os direitos na tela Cliente > Cadastro > Informacoes do cliente > Geral

Contexto:
Dado que eu faca login
E informe o EC "2000096586"

@CLIENTES_CADASTRO_INFO_GERAL_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@TESOURARIA_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CANAIS_ALTERNATIVOS_ANALISTA @JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR
@ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_GERAL_VER
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_GERAL_VER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Entao o sistema exibira/nao exibira a tela "Informações do cliente", "1"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_VALORESEMABERTO_EDITAR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_VALORESEMABERTO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_VALORESEMABERTO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar no botao "Editar Dados" do frame "Situação do Cliente"
Quando o campo Status do cadastro estiver como "Fechado"
Entao o campo contem/nao contem a opcao "Valores em aberto"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_CHARGEBACK_EDITAR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_CHARGEBACK_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_CHARGEBACK_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar no botao "Editar Dados" do frame "Situação do Cliente"
Quando o campo Status do cadastro estiver como "Fechado"
Entao o campo contem/nao contem a opcao "Monitoria chargeback"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DOMICILIOINVALIDO_EDITAR
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DOMICILIOINVALIDO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DOMICILIOINVALIDO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar no botao "Editar Dados" do frame "Situação do Cliente"
Quando o campo Status do cadastro estiver como "Fechado"
Entao o campo contem/nao contem a opcao "Domicílio inválido"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_CODIGOF_EDITAR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_CODIGOF_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_CODIGOF_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar no botao "Editar Dados" do frame "Situação do Cliente"
Quando o campo Status do cadastro estiver como "Fechado"
Entao o campo contem/nao contem a opcao "Código F"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DECISAOCOMERCIAL_EDITAR
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@BACKOFFICE_ANALISTA_FORNECEDOR @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DECISAOCOMERCIAL_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DECISAOCOMERCIAL_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar no botao "Editar Dados" do frame "Situação do Cliente"
Quando o campo Status do cadastro estiver como "Fechado"
Entao o campo contem/nao contem a opcao "Decisão comercial"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DECISAOJURIDICA_EDITAR
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @JURIDICO_CONTENCIOSO_ANALISTA
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DECISAOJURIDICA_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DECISAOJURIDICA_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar no botao "Editar Dados" do frame "Situação do Cliente"
Quando o campo Status do cadastro estiver como "Fechado"
Entao o campo contem/nao contem a opcao "Decisão jurídica"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_SOLICITACAODOCLIENTE_EDITAR
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@BACKOFFICE_ANALISTA_FORNECEDOR @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_SOLICITACAODOCLIENTE_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_SOLICITACAODOCLIENTE_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar no botao "Editar Dados" do frame "Situação do Cliente"
Quando o campo Status do cadastro estiver como "Fechado"
Entao o campo contem/nao contem a opcao "Solicitação do cliente"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_ABRIRFECHAR_EDITAR
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_ABRIRFECHAR_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_ABRIRFECHAR_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar no botao "Editar Dados" do frame "Situação do Cliente"
Entao o campo Status do cadastro deve/nao deve estar habilitado

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_BLOQUEIO_EDITAR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_BLOQUEIO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_BLOQUEIO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar no botao "Editar Dados" do frame "Situação do Cliente"
Entao o campo Bloqueio deve/nao deve estar habilitado

@CLIENTES_CADASTRO_INFO_GERAL_DADOSDOPROPRIETARIO_EDITAR
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_GERAL_DADOSDOPROPRIETARIO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_GERAL_DADOSDOPROPRIETARIO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Entao o botao de acao "Editar" do frame "Dados do Proprietário" devera estar habilitado/desabilitado

@CLIENTES_CADASTRO_INFO_GERAL_DADOSDOCLIENTE_DADOSDECADASTRO_EDITAR
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_GERAL_DADOSDOCLIENTE_DADOSDECADASTRO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_GERAL_DADOSDOCLIENTE_DADOSDECADASTRO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Entao o botao "Editar Dados" do frame "Dados de cadastro", "1" estara habilitado/desabilitado

@CLIENTES_CADASTRO_INFO_GERAL_DADOSDOCLIENTE_RAZAOSOCIAL_EDITAR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_GERAL_DADOSDOCLIENTE_RAZAOSOCIAL_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_GERAL_DADOSDOCLIENTE_RAZAOSOCIAL_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar no botao "Editar Dados" do frame "Dados de cadastro"
Entao o campo "Razão Social" deve/nao deve estar habilitado

@CLIENTES_CADASTRO_INFO_SITE_EDITAR
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_SITE_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITE_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar no botao "Editar Dados" do frame "Dados de cadastro"
Entao o campo "Site" deve/nao deve estar habilitado

@CLIENTES_CADASTRO_INFO_GERAL_DADOSDECONTATOS_EDITAR
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_GERAL_DADOSDECONTATOS_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_GERAL_DADOSDECONTATOS_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Dados de Contato", "0"
Entao o botao "Editar" dados de contato esta habilitado/desabilitado

@CLIENTES_CADASTRO_INFO_ENDERECODECONTRATO_EDITAR
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_HELP_DESK_ANALISTA
@LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_ENDERECODECONTRATO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_ENDERECODECONTRATO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Entao o botao "Editar Dados" do frame "Endereço do contrato", "1" estara habilitado/desabilitado

@CLIENTES_CADASTRO_INFO_ENDERECO_EDITAR
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_ENDERECO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_ENDERECO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "ENDEREÇO", "0"
Entao o botao "Editar" dados de contato esta habilitado/desabilitado

@CLIENTE_GERAL_BLOQUEIOS_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@TESOURARIA_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@GESTAO_ECONOMICA_ANALISTA @CANAIS_ALTERNATIVOS_ANALISTA @JURIDICO_CONTENCIOSO_ANALISTA
@CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTE_GERAL_BLOQUEIOS_VER
Dado que tenha/nao tenha o direito "CLIENTE_GERAL_BLOQUEIOS_VER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Bloqueios", "0"
Entao podera/nao podera acessar a aba "Bloqueios"

@CLIENTES_CADASTRO_INFO_GERAL_DADOSDECADASTRO_NOMENOCOMPROVANTEDEVENDA_EDITAR
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_HELP_DESK_ANALISTA
@LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFO_GERAL_DADOSDECADASTRO_NOMENOCOMPROVANTEDEVENDA_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_GERAL_DADOSDECADASTRO_NOMENOCOMPROVANTEDEVENDA_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "GERAL", "0"
E clicar na aba "Dados do cliente", "0"
Quando clicar no botao "Editar Dados" do frame "dados de cadastro"
Então o botao "Salvar", "1" estara habilitado/desabilitado

@CLIENTES_INFO_CADASTRO_ENDERECO_MASTER_EDITAR
Cenario: CT.SEGINFO - [AUT] CLIENTES_INFO_CADASTRO_ENDERECO_MASTER_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_INFO_CADASTRO_ENDERECO_MASTER_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "ENDEREÇO", "0"
E clicar na acao "Editar endereço", "0"
E informar "93950000" no campo "CEP"
E clicar no botao "Ok" do frame "Endereço"
Entao o campo "Logradouro" deve/nao deve estar habilitado


@CLIENTES_CADASTRO_INFOCLIENTE_CONTRATOS_VER @R4
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFOCLIENTE_CONTRATOS_VER
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFOCLIENTE_CONTRATOS_VER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Contratos", "0"
Entao podera/nao podera acessar a aba "Contratos"

@CLIENTES_CADASTRO_INFOCLIENTE_CONTRATOS_REMOVER @R4
Cenario: CT.SEGINFO - [AUT] CLIENTES_CADASTRO_INFOCLIENTE_CONTRATOS_REMOVER
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFOCLIENTE_CONTRATOS_REMOVER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Contratos", "0"
E clicar na acao "Visualizar Contrato", "0"
Entao o botao "Excluir", "1" estara habilitado/desabilitado
