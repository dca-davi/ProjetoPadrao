#language: pt

@ALL @CLIENTES_CADASTRO_GERAL
Funcionalidade: Validar os direitos na tela Cliente > Cadastro > Informacoes do cliente > Geral

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTES_CADASTRO_INFO_GERAL_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CLIENTES_CADASTRO_INFO_GERAL_VER
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_GERAL_VER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Entao o sistema exibira/nao exibira a tela "Informações do cliente"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_VALORESEMABERTO_EDITAR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_VALORESEMABERTO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_VALORESEMABERTO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar no botao "Editar Dados" do frame "Situação do Cliente"
Quando o campo Status do cadastro estiver como "Fechado"
Entao o campo contem/nao contem a opcao "Valores em aberto"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_CHARGEBACK_EDITAR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_CHARGEBACK_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_CHARGEBACK_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar no botao "Editar Dados" do frame "Situação do Cliente"
Quando o campo Status do cadastro estiver como "Fechado"
Entao o campo contem/nao contem a opcao "Monitoria chargeback"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DOMICILIOINVALIDO_EDITAR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DOMICILIOINVALIDO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DOMICILIOINVALIDO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar no botao "Editar Dados" do frame "Situação do Cliente"
Quando o campo Status do cadastro estiver como "Fechado"
Entao o campo contem/nao contem a opcao "Domicílio inválido"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_CODIGOF_EDITAR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_CODIGOF_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_CODIGOF_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar no botao "Editar Dados" do frame "Situação do Cliente"
Quando o campo Status do cadastro estiver como "Fechado"
Entao o campo contem/nao contem a opcao "Código F"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DECISAOCOMERCIAL_EDITAR @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DECISAOCOMERCIAL_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DECISAOCOMERCIAL_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar no botao "Editar Dados" do frame "Situação do Cliente"
Quando o campo Status do cadastro estiver como "Fechado"
Entao o campo contem/nao contem a opcao "Decisão comercial"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DECISAOJURIDICA_EDITAR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DECISAOJURIDICA_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_DECISAOJURIDICA_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar no botao "Editar Dados" do frame "Situação do Cliente"
Quando o campo Status do cadastro estiver como "Fechado"
Entao o campo contem/nao contem a opcao "Decisão jurídica"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_SOLICITACAODOCLIENTE_EDITAR @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_SOLICITACAODOCLIENTE_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_MOTIVO_SOLICITACAODOCLIENTE_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar no botao "Editar Dados" do frame "Situação do Cliente"
Quando o campo Status do cadastro estiver como "Fechado"
Entao o campo contem/nao contem a opcao "Solicitação do cliente"

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_ABRIRFECHAR_EDITAR @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_ABRIRFECHAR_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_ABRIRFECHAR_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar no botao "Editar Dados" do frame "Situação do Cliente"
Entao o campo Status do cadastro deve/nao deve estar habilitado

@CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_BLOQUEIO_EDITAR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_BLOQUEIO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITUACAODOCLIENTE_BLOQUEIO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar no botao "Editar Dados" do frame "Situação do Cliente"
Entao o campo Bloqueio deve/nao deve estar habilitado

@CLIENTES_CADASTRO_INFO_GERAL_DADOSDOPROPRIETARIO_EDITAR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_GERAL_DADOSDOPROPRIETARIO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_GERAL_DADOSDOPROPRIETARIO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Entao o botao de acao "Editar" do frame "Dados do Proprietário" devera estar habilitado/desabilitado

@CLIENTES_CADASTRO_INFO_GERAL_DADOSDOCLIENTE_DADOSDECADASTRO_EDITAR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_GERAL_DADOSDOCLIENTE_DADOSDECADASTRO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_GERAL_DADOSDOCLIENTE_DADOSDECADASTRO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Entao o botao "Editar Dados" do frame "Dados de cadastro" estara habilitado/desabilitado

@CLIENTES_CADASTRO_INFO_GERAL_DADOSDOCLIENTE_RAZAOSOCIAL_EDITAR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_GERAL_DADOSDOCLIENTE_RAZAOSOCIAL_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_GERAL_DADOSDOCLIENTE_RAZAOSOCIAL_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar no botao "Editar Dados" do frame "Dados de cadastro"
Entao o campo "Razão Social" deve/nao deve estar habilitado

@CLIENTES_CADASTRO_INFO_SITE_EDITAR @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CLIENTES_CADASTRO_INFO_SITE_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_SITE_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar no botao "Editar Dados" do frame "Dados de cadastro"
Entao o campo "Site" deve/nao deve estar habilitado

@CLIENTES_CADASTRO_INFO_GERAL_DADOSDECONTATOS_EDITAR  @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CLIENTES_CADASTRO_INFO_GERAL_DADOSDECONTATOS_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_GERAL_DADOSDECONTATOS_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Dados de Contato"
Entao o botao "Editar" dados de contato esta habilitado/desabilitado

@CLIENTES_CADASTRO_INFO_ENDERECODECONTRATO_EDITAR
Cenario: Validar direito CLIENTES_CADASTRO_INFO_ENDERECODECONTRATO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_ENDERECODECONTRATO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Entao o botao "Editar Dados" do frame "Endereço do contrato" estara habilitado/desabilitado

@CLIENTES_CADASTRO_INFO_ENDERECO_EDITAR  @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CLIENTES_CADASTRO_INFO_ENDERECO_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_CADASTRO_INFO_ENDERECO_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "ENDEREÇO"
Entao o botao "Editar" dados de contato esta habilitado/desabilitado

@CLIENTE_GERAL_BLOQUEIOS_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CLIENTE_GERAL_BLOQUEIOS_VER
Dado que tenha/nao tenha o direito "CLIENTE_GERAL_BLOQUEIOS_VER"
E que tenha/nao tenha acesso na tela "Informações do cliente"
Quando clicar na aba "Bloqueios"
Entao podera/nao podera acessar a aba "Bloqueios"
