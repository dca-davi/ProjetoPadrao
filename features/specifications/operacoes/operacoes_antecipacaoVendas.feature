#language: pt
#encoding: utf-8

@ALL @OPERACOES_ANTECIPACAOVENDAS
Funcionalidade: Validar os direitos na tela Operacoes > Antecipacao de Vendas

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@OPERACOES_ANTECIPACAOVENDAS_ACUMDIARIOBANCO_VER
@ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_ACUMDIARIOBANCO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ACUMDIARIOBANCO_VER"
E que tenha/nao tenha acesso na tela "Acumulado diário"
Quando clicar na aba "Por Banco", "0"
Quando informar "1-BANCO DO BRASIL S.A." no campo "banco - acumulo diario"
E selecionar a data "08/09/2016" da pagina "Acumulado diario - Por banco"
Entao clicar no botao "Pesquisar", "1"

@OPERACOES_ANTECIPACAOVENDAS_ACUMDIARIOCANAL_VER
@ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_ACUMDIARIOCANAL_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ACUMDIARIOCANAL_VER"
E que tenha/nao tenha acesso na tela "Acumulado diário"
Quando clicar na aba "Por Canal", "0"
Quando selecionar "CENTRAL" do campo "canal - acumulado diario", "0"
E selecionar a data "08/09/2016" da pagina "Acumulado diario - Por canal"
Entao clicar no botao Pesquisar


@OPERACOES_ANTECIPACAO_CANAL_CENTRALDEANTECIPACAO_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CANAIS_ALTERNATIVOS_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAO_CANAL_CENTRALDEANTECIPACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAO_CANAL_CENTRALDEANTECIPACAO_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Entao o sistema exibira/nao exibira a tela "Operação de Antecipação", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERACAOANTECIPACAO_CLIENTEPRECO_VER
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERACAOANTECIPACAO_CLIENTEPRECO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERACAOANTECIPACAO_CLIENTEPRECO_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Entao selecionar a aba precificacao


@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_AVANCADO_DIFUTURO_VER
@TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_AVANCADO_DIFUTURO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_AVANCADO_DIFUTURO_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa", "0"
Entao localizar o frame "DI futuro", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_DETALHEDISPONIVEL_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CANAIS_ALTERNATIVOS_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_DETALHEDISPONIVEL_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_DETALHEDISPONIVEL_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa", "0"
Entao clicar na acao "visualizar - detalhe disponivel", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_CDICIELO_VER
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_CDICIELO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_CDICIELO_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa", "0"
E localizar o frame "Percentual CDI", "1"
Entao localizar o frame "(Cielo)", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_CDICLIENTE_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CANAIS_ALTERNATIVOS_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_CDICLIENTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_CDICLIENTE_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa", "0"
E localizar o frame "Percentual CDI", "1"
Entao localizar o frame "(Cliente)", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_EDITAR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA @CRM_COORDENADOR
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_EDITAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa", "0"
Entao selecionar clicar no link "Alterar valores de negociacao"
E informar "5,38" no campo "preco - antecipacao avulsa"
Entao clicar no botao "OK", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_RESULTADOBASICO_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CANAIS_ALTERNATIVOS_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_RESULTADOBASICO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_RESULTADOBASICO_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa", "0"
E localizar o frame "Resultados", "1"
E localizar o frame "Período de antecipação", "1"
E localizar o frame "Taxa efetiva", "1"
E localizar o frame "Custo de captação", "1"
E localizar o frame "Prazo médio", "1"
E localizar o frame "DI futuro", "1"
E localizar o frame "Prazo médio", "1"
E localizar o frame "Custo de captação", "1"
Entao localizar o frame "Receita líquida", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_SOLICITAR
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_SOLICITAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa", "0"
E clicar no botao "Efetivar Operação", "0"
Entao confirmar a efetivacao

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIPACAO_AVULSA_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CANAIS_ALTERNATIVOS_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERANTECIPACAO_AVULSA_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIPACAO_AVULSA_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa", "0"
Entao o sistema exibira/nao exibira a tela "Operação de Antecipação", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_AVANCADO_VER
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_AVANCADO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_AVANCADO_VER"
E que tenha/nao tenha acesso na tela "Operações realizadas"
E informar "2000006420" no campo "numero do cliente - operacoes realizadas"
E informar "9239" no campo "numero da operacao - operacoes realizadas"
E selecionar "Efetivado" do campo "Status", "0"
E selecionar a data "30/09/2016" da pagina "Data de pagamento de"
Quando selecionar a data "30/09/2016" da pagina "Data de pagamento ate"
Entao clicar no botao "Pesquisar", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CANCELARCLIENTE_EDITAR
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CANCELARCLIENTE_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CANCELARCLIENTE_EDITAR"
E que tenha/nao tenha acesso na tela "Operações realizadas"
Quando clicar na acao "cancelar", "0"
E selecionar "solicitacao do cliente" do campo "Motivo", "0"
Então clicar no botao "Sim", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CANCELAROUTROS_EDITAR
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CANCELAROUTROS_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CANCELAROUTROS_EDITAR"
E que tenha/nao tenha acesso na tela "Operações realizadas"
Quando clicar na acao "cancelar", "0"
E selecionar "outros" do campo "Motivo", "0"
Então clicar no botao "Sim", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CANCELARPREVENCAO_EDITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CANCELARPREVENCAO_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CANCELARPREVENCAO_EDITAR"
E que tenha/nao tenha acesso na tela "Operações realizadas"
E selecionar "Pendente" do campo "Status", "0"
E clicar no botao "Pesquisar", "0"
Quando clicar na acao "cancelar", "0"
Entao selecionar "Prevenção de segurança" do campo "Motivo", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CDICLIENTE_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CANAIS_ALTERNATIVOS_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CDICLIENTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CDICLIENTE_VER"
E que tenha/nao tenha acesso na tela "Operações realizadas"
Quando clicar na acao "Visualizar - operacoes realizadas", "0"
E localizar o frame "Percentual CDI", "1"
E localizar o frame "(Cliente)", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_DIFUTURO_VER
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CRM_COORDENADOR
@ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_DIFUTURO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_DIFUTURO_VER"
E que tenha/nao tenha acesso na tela "Operações realizadas"
Quando clicar na acao "Visualizar - operacoes realizadas", "0"
Entao localizar o frame "DI futuro", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO
@CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CENTRAL_ANTECIPACAO_ANALISTA @CANAIS_ALTERNATIVOS_ANALISTA @CRM_COORDENADOR
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_VER"
E que tenha/nao tenha acesso na tela "Operações realizadas"
Quando informar "1018242187" no campo "numero do cliente - operacoes realizadas"
E clicar no botao "Pesquisar", "0"
Entao clicar na acao "Visualizar - operacoes realizadas", "0"

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CENTRAL_ANTECIPACAO_ANALISTA @CANAIS_ALTERNATIVOS_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_VER"
E que tenha/nao tenha acesso na tela "Antecipação programadas cadastradas"
Quando informar "1018242187" no campo "numero do cliente - antecipacao programadas cadastradas"
Entao clicar no botao "Pesquisar", "1"

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGTODOS_VER
@CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO @GESTAO_ECONOMICA_ANALISTA
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGTODOS_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGTODOS_VER"
E que tenha/nao tenha acesso na tela "Antecipação programadas cadastradas"
E selecionar o combobox "Status" e a opcao "Vigente", "0"
Quando clicar no botao "Pesquisar"
Entao localizar o frame "Últimas Transações", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CDIGERENCIAL_VER
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CDIGERENCIAL_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CDIGERENCIAL_VER"
E que tenha/nao tenha acesso na tela "Operações realizadas"
E selecionar o combobox "Status" e a opcao "Vigente", "0"
Quando clicar no botao "Pesquisar", "0"
Entao localizar o frame "Últimas Transações", "0"
E clicar na acao "Visualizar", "1"

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROG_EDITAR
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROG_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROG_EDITAR"
E que tenha/nao tenha acesso na tela "Antecipação programadas cadastradas"
E selecionar o combobox "Status" e a opcao "Vigente", "0"
Quando clicar no botao "Pesquisar", "0"
Entao clicar na acao "cancelar - coluna acao", "1"

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_BCODOMICILIO_CRIAR
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_BCODOMICILIO_CRIAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_BCODOMICILIO_CRIAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
E clicar na aba "Antecipação Programada", "0"
E clicar na aba "Incluir", "0"
Quando selecionar a opcao "Critérios de antecipação"
E selecionar a opcao "1 | 1480 | 37510 - 1"
Então o botao "Salvar", "1" estara habilitado/desabilitado

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_NUMEROPARC_CRIAR
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_NUMEROPARC_CRIAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_NUMEROPARC_CRIAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
E clicar na aba "Antecipação Programada", "0"
E clicar na aba "Incluir", "0"
Quando selecionar a opcao "Critérios de antecipação"
E informar "1" no campo "numero de parcelas - criterios de antecipacao - de"
E informar "3" no campo "numero de parcelas - criterios de antecipacao - ate"
Então o botao "Salvar", "1" estara habilitado/desabilitado

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_SEMANAL_CRIAR
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_SEMANAL_CRIAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_SEMANAL_CRIAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
E clicar na aba "Antecipação Programada", "0"
E clicar na aba "Incluir", "0"
Quando selecionar a opcao "Semanal"
E selecionar "Terça-feira" do campo "Dia - antecipacao programada", "0"
Então o botao "Salvar", "1" estara habilitado/desabilitado

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_TIPOPAGTO_CRIAR
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_TIPOPAGTO_CRIAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_TIPOPAGTO_CRIAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
E clicar na aba "Antecipação Programada", "0"
E clicar na aba "Incluir", "0"
Quando selecionar a opcao "Critérios de antecipação"
E selecionar a opcao "Crédito Parcelado loja"
E selecionar a opcao "Crédito À vista"
Então o botao "Salvar", "1" estara habilitado/desabilitado

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_CRIAR
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_CRIAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_CRIAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
E clicar na aba "Antecipação Programada", "0"
E clicar na aba "Incluir", "0"
Entao o botao "Salvar", "1" estara habilitado/desabilitado

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_BANDEIRA_CRIAR
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_BANDEIRA_CRIAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_BANDEIRA_CRIAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
E clicar na aba "Antecipação Programada", "0"
E clicar na aba "Incluir", "0"
Quando selecionar a opcao "Critérios de antecipação"
E selecionar a opcao "CREDSYSTEM"
Entao o botao "Salvar", "1" estara habilitado/desabilitado

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_MENSAL_CRIAR
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_MENSAL_CRIAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_MENSAL_CRIAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
E clicar na aba "Antecipação Programada", "0"
E clicar na aba "Incluir", "0"
Quando selecionar a opcao "Personalizada"
Entao o botao "Salvar", "1" estara habilitado/desabilitado

@OPERACOES_ANTECIPACAOVENDAS_PERIODOANTECIPADO_VER
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_PERIODOANTECIPADO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_PERIODOANTECIPADO_VER"
E que tenha/nao tenha acesso na tela "Operações realizadas"
Entao o botao "Pesquisar", "1" estara habilitado/desabilitado
E clicar na acao "Visualizar", "0"
Entao localizar o frame "Período de antecipação", "1"

@OPERACOES_ANTECIPACAO_VENDAS_OPERACAO_ANTECIPACAO_ALCADA_A01_VER
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAO_VENDAS_OPERACAO_ANTECIPACAO_ALCADA_A01_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAO_VENDAS_OPERACAO_ANTECIPACAO_ALCADA_A01_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Entao clicar na aba "Precificação", "1"

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_CRITERIOS_CRIAR
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_CRITERIOS_CRIAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_CRITERIOS_CRIAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Programada", "0"
E clicar na aba "Incluir", "0"
E selecionar a opcao "Diário"
E selecionar a opcao "Valor total"
Quando selecionar a opcao "Preço negociado"
E clicar no botao "Salvar", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_AVANCADO_VER
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_AVANCADO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_AVANCADO_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa", "0"
Entao localizar o frame "Resultados", "1"

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_PAGAMENTO_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CANAIS_ALTERNATIVOS_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_PAGAMENTO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_PAGAMENTO_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa", "0"
Entao localizar o frame "Pagamento", "1"

@OPERACOES_ANTECIPACAO_CANAL_MESADEOPERACOES_VER
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAO_CANAL_MESADEOPERACOES_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAO_CANAL_MESADEOPERACOES_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Entao o sistema exibira/nao exibira a tela "Operação de Antecipação", "1"

@OPERACOES_ANTECIPACAO_VENDAS_OPERACAO_ANTECIPACAO_INFO_CLIENTE_VER
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAO_VENDAS_OPERACAO_ANTECIPACAO_INFO_CLIENTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAO_VENDAS_OPERACAO_ANTECIPACAO_INFO_CLIENTE_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Entao o sistema exibira/nao exibira a tela "Operação de Antecipação", "1"


@OPERACOES_ANTECIPACAOVENDAS_ANTECPROGRAMADASCADASTRADAS_EXPORTAR @R4
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_ANTECPROGRAMADASCADASTRADAS_EXPORTAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECPROGRAMADASCADASTRADAS_EXPORTAR"
E que tenha/nao tenha acesso na tela "Antecipação programadas cadastradas"
Entao o botao "Exportar", "1" estara habilitado/desabilitado

@OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_EXPORTAR @R4
Cenario: CT.SEGINFO - [AUT] OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_EXPORTAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_EXPORTAR"
E que tenha/nao tenha acesso na tela "Operações realizadas"
Entao o botao "Exportar", "1" estara habilitado/desabilitado
