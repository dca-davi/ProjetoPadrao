#language: pt
#encoding: utf-8

@ALL @OPERACOES_ANTECIPACAOVENDAS
Funcionalidade: Validar os direitos na tela Operacoes > Antecipacao de Vendas

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@OPERACOES_ANTECIPACAOVENDAS_ACUMDIARIOBANCO_VER
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_ACUMDIARIOBANCO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ACUMDIARIOBANCO_VER"
E que tenha/nao tenha acesso na tela "Acumulado diário"
Quando clicar na aba "Por Banco"
Quando informar "1-BANCO DO BRASIL S.A." no campo "banco - acumulo diario"
E selecionar a data "08/09/2016" da pagina "Acumulado diario - Por banco"
Entao clicar no botao "Pesquisar"

@OPERACOES_ANTECIPACAOVENDAS_ACUMDIARIOCANAL_VER
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_ACUMDIARIOCANAL_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ACUMDIARIOCANAL_VER"
E que tenha/nao tenha acesso na tela "Acumulado diário"
Quando clicar na aba "Por Canal"
Quando selecionar "CENTRAL" do campo "canal - acumulado diario"
E selecionar a data "08/09/2016" da pagina "Acumulado diario - Por canal"
Entao clicar no botao Pesquisar

@OPERACOES_ANTECIPACAO_CANAL_CENTRALDEANTECIPACAO_VER  @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito OPERACOES_ANTECIPACAO_CANAL_CENTRALDEANTECIPACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAO_CANAL_CENTRALDEANTECIPACAO_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Entao o sistema exibira/nao exibira a tela "Operação de Antecipação"

@OPERACOES_ANTECIPACAOVENDAS_OPERACAOANTECIPACAO_CLIENTEPRECO_VER
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERACAOANTECIPACAO_CLIENTEPRECO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERACAOANTECIPACAO_CLIENTEPRECO_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando selecionar a aba precificacao
E localizar o frame "Preço Especial"
E localizar o frame "Categoria"
Então localizar o frame "Alçada"

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_AVANCADO_DIFUTURO_VER
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_AVANCADO_DIFUTURO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_AVANCADO_DIFUTURO_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa"
Entao localizar o frame "DI futuro"

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_DETALHEDISPONIVEL_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_DETALHEDISPONIVEL_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_DETALHEDISPONIVEL_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa"
Entao clicar na acao "visualizar - detalhe disponivel"

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_CDICIELO_VER
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_CDICIELO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_CDICIELO_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa"
E localizar o frame "Percentual CDI"
Entao localizar o frame "(Cielo)"

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_CDICLIENTE_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_CDICLIENTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_CDICLIENTE_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa"
E localizar o frame "Percentual CDI"
Entao localizar o frame "(Cliente)"

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_EDITAR
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_NEGOCIACAO_EDITAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa"
Entao selecionar clicar no link "Alterar valores de negociacao"
E informar "5,38" no campo "preco - antecipacao avulsa"
Entao clicar no botao "OK"

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_RESULTADOBASICO_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_RESULTADOBASICO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_RESULTADOBASICO_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa"
E localizar o frame "Resultados"
E localizar o frame "Período de antecipação"
E localizar o frame "Taxa efetiva"
E localizar o frame "Custo de captação"
E localizar o frame "Prazo médio"
E localizar o frame "DI futuro"
E localizar o frame "Prazo médio"
E localizar o frame "Custo de captação"
Entao localizar o frame "Receita líquida"

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_SOLICITAR
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIP_AVULSA_SOLICITAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa"
E clicar no botao "Efetivar Operação"
Entao confirmar a efetivacao

@OPERACOES_ANTECIPACAOVENDAS_OPERANTECIPACAO_AVULSA_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERANTECIPACAO_AVULSA_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERANTECIPACAO_AVULSA_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Quando clicar na aba "Antecipação Avulsa"
Entao o sistema exibira/nao exibira a tela "Operação de Antecipação"

@OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_AVANCADO_VER
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_AVANCADO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_AVANCADO_VER"
E que tenha/nao tenha acesso na tela "Operações realizadas"
E informar "2000006420" no campo "numero do cliente - operacoes realizadas"
E informar "9239" no campo "numero da operacao - operacoes realizadas"
E selecionar "Efetivado" do campo "Status"
E selecionar a data "30/09/2016" da pagina "Data de pagamento de"
Quando selecionar a data "30/09/2016" da pagina "Data de pagamento ate"
Entao clicar no botao "Pesquisar"

@OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CANCELARCLIENTE_EDITAR
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CANCELARCLIENTE_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CANCELARCLIENTE_EDITAR"
E que tenha/nao tenha acesso na tela "Operações realizadas"
Quando clicar na acao "cancelar"
E selecionar "solicitacao do cliente" do campo "Motivo"
Então clicar no botao "Sim"

@OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CANCELAROUTROS_EDITAR
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CANCELAROUTROS_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CANCELAROUTROS_EDITAR"
E que tenha/nao tenha acesso na tela "Operações realizadas"
Quando clicar na acao "cancelar"
E selecionar "outros" do campo "Motivo"
Então clicar no botao "Sim"

@OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CDICLIENTE_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CDICLIENTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CDICLIENTE_VER"
E que tenha/nao tenha acesso na tela "Operações realizadas"
Quando clicar na acao "Visualizar - operacoes realizadas"
E localizar o frame "Percentual CDI"
E localizar o frame "(Cliente)"

@OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_DIFUTURO_VER
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_DIFUTURO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_DIFUTURO_VER"
E que tenha/nao tenha acesso na tela "Operações realizadas"
Quando clicar na acao "Visualizar - operacoes realizadas"
Entao localizar o frame "DI futuro"

  @OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_VER"
E que tenha/nao tenha acesso na tela "Operações realizadas"
Quando informar "1018242187" no campo "numero do cliente - operacoes realizadas"
E clicar no botao "Pesquisar"
Entao clicar na acao "Visualizar - operacoes realizadas"

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_VER"
E que tenha/nao tenha acesso na tela "Antecipação programadas cadastradas"
Quando informar "1018242187" no campo "numero do cliente - antecipacao programadas cadastradas"
Entao clicar no botao "Pesquisar"

# Demis >>>
@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGTODOS_VER
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_VER"
E que tenha/nao tenha acesso na tela "Antecipação programadas cadastradas"
Entao localizar o frame "Últimas Transações"

@OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CDIGERENCIAL_VER
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CDIGERENCIAL_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_OPERREALIZADAS_CDIGERENCIAL_VER"
E que tenha/nao tenha acesso na tela "Operações realizadas"
Entao localizar o frame "Últimas Transações"
E clicar na acao "Visualizar"
# Demis <<<

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROG_EDITAR
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROG_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROG_EDITAR"
E que tenha/nao tenha acesso na tela "Antecipação programadas cadastradas"
E selecionar o combobox "Status" e a opcao "Vigente"
Quando clicar no botao "Pesquisar"
Entao clicar na acao "cancelar - coluna acao"

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_BCODOMICILIO_CRIAR
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_BCODOMICILIO_CRIAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_BCODOMICILIO_CRIAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
E clicar na aba "Antecipação Programada"
E clicar na aba "Incluir"
Quando selecionar a opcao "Critérios de antecipação"
E selecionar a opcao "1 | 1480 | 37510 - 1"
Então o botao "Salvar" estara habilitado/desabilitado

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_NUMEROPARC_CRIAR
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_NUMEROPARC_CRIAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_NUMEROPARC_CRIAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
E clicar na aba "Antecipação Programada"
E clicar na aba "Incluir"
Quando selecionar a opcao "Critérios de antecipação"
E informar "1" no campo "numero de parcelas - criterios de antecipacao - de"
E informar "3" no campo "numero de parcelas - criterios de antecipacao - ate"
Então o botao "Salvar" estara habilitado/desabilitado

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_SEMANAL_CRIAR
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_SEMANAL_CRIAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_SEMANAL_CRIAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
E clicar na aba "Antecipação Programada"
E clicar na aba "Incluir"
Quando selecionar a opcao "Semanal"
E selecionar "Terça-feira" do campo "Dia - antecipacao programada"
Então o botao "Salvar" estara habilitado/desabilitado

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_TIPOPAGTO_CRIAR
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_TIPOPAGTO_CRIAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_TIPOPAGTO_CRIAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
E clicar na aba "Antecipação Programada"
E clicar na aba "Incluir"
Quando selecionar a opcao "Critérios de antecipação"
E selecionar a opcao "Crédito Parcelado loja"
E selecionar a opcao "Crédito À vista"
Então o botao "Salvar" estara habilitado/desabilitado

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_CRIAR
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_CRIAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_CRIAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
E clicar na aba "Antecipação Programada"
E clicar na aba "Incluir"
Entao o botao "Salvar" estara habilitado/desabilitado

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_BANDEIRA_CRIAR
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_BANDEIRA_CRIAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_BANDEIRA_CRIAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
E clicar na aba "Antecipação Programada"
E clicar na aba "Incluir"
Quando selecionar a opcao "Critérios de antecipação"
E selecionar a opcao "CREDSYSTEM"
Entao o botao "Salvar" estara habilitado/desabilitado

@OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_MENSAL_CRIAR
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_MENSAL_CRIAR
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_ANTECIPACAOPROGCLIENTE_MENSAL_CRIAR"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
E clicar na aba "Antecipação Programada"
E clicar na aba "Incluir"
Quando selecionar a opcao "Personalizada"
Entao o botao "Salvar" estara habilitado/desabilitado

@OPERACOES_ANTECIPACAOVENDAS_PERIODOANTECIPADO_VER
Cenario: Validar direito OPERACOES_ANTECIPACAOVENDAS_PERIODOANTECIPADO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAOVENDAS_PERIODOANTECIPADO_VER"
E que tenha/nao tenha acesso na tela "Operações realizadas"
Entao o botao "Pesquisar" estara habilitado/desabilitado
E clicar na acao "Visualizar"
Entao localizar o frame "Período de antecipação"
