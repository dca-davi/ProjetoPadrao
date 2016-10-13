#language: pt

@ALL @CONFIGURACOES_ANTECIPACAOVENDAS
Funcionalidade: Validar os direitos na tela Configurações > Antecipação de vendas

Contexto:
Dado que eu faca login

@CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAGERAL_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAGERAL_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAGERAL_VER"
E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
E que tenha/nao tenha acesso na tela "Consulta geral"
Entao o sistema exibira/nao exibira a tela "Precificação"

@CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAPORCANAL_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAPORCANAL_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAPORCANAL_VER"
E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
E clicar na aba "Consulta por canal"

@CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOESGERAIS_TAXAEFETIVAMAXIMA_VER
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOESGERAIS_TAXAEFETIVAMAXIMA_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOESGERAIS_TAXAEFETIVAMAXIMA_VER"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao localizar o frame "Taxa efetiva máxima"

@CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_RESERVAFINANCEIRA_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_RESERVAFINANCEIRA_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_RESERVAFINANCEIRA_VER"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao localizar o frame "Reserva financeira"

@CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAO_CARTAONAOPRESENTE_VER
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAO_CARTAONAOPRESENTE_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAO_CARTAONAOPRESENTE_VER"
E que tenha/nao tenha acesso na tela "Exceção_antecipaçãoVendas"
E que tenha/nao tenha acesso na tela "Cartão não presente"
E que tenha/nao tenha acesso na tela "Pesquisar"
Entao o sistema exibira/nao exibira a tela "Exceção"

@CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAPORCANAL_EDITAR
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAPORCANAL_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAPORCANAL_EDITAR"
E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
Quando clicar no botao "Editar"
Entao o sistema exibira/nao exibira a tela "Precificação"

@CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOESGERAIS_TAXAEFETIVAMAXIMA_EDITAR
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOESGERAIS_TAXAEFETIVAMAXIMA_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOESGERAIS_TAXAEFETIVAMAXIMA_EDITAR"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao clicar no botao "Editar dados" do frame "taxa efetiva máxima"

@CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_RESERVAFINANCEIRA_EDITAR
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_RESERVAFINANCEIRA_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_RESERVAFINANCEIRA_EDITAR"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao clicar no botao "Editar dados" do frame "Reserva financeira"

@CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_PRECOESPECIAL_EDITAR
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_PRECOESPECIAL_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_PRECOESPECIAL_EDITAR"
E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
Quando clicar na aba "Preço Especial"
E clicar na aba "Incluir"
Entao o sistema exibira/nao exibira a tela "Precificação"

@CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_PRECOESPECIAL_VER
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_PRECOESPECIAL_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_PRECOESPECIAL_VER"
E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
Quando clicar na aba "Preço Especial"
Entao podera/nao podera acessar a aba "Preço Especial"

@SETUP_ARVCONFIGURACOES_GERAIS_ATRIBUICAOCATEGORIAPRECO_EDITAR
Cenario: Validar direito SETUP_ARVCONFIGURACOES_GERAIS_ATRIBUICAOCATEGORIAPRECO_EDITAR
Dado que tenha/nao tenha o direito "SETUP_ARVCONFIGURACOES_GERAIS_ATRIBUICAOCATEGORIAPRECO_EDITAR"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao clicar no botao "Editar dados" do frame "Atribuição de categoria/preço"

@SETUP_ARV_CUSTOS_CUSTO_OPERACIONAL_VER
Cenario: Validar direito SETUP_ARV_CUSTOS_CUSTO_OPERACIONAL_VER
Dado que tenha/nao tenha o direito "SETUP_ARV_CUSTOS_CUSTO_OPERACIONAL_VER"
E que tenha/nao tenha acesso na tela "Custos"
Entao clicar na aba "CUSTO OPERACIONAL"

@SETUP_ARV_CUSTOS_CDI_VER
Cenario: Validar direito SETUP_ARV_CUSTOS_CDI_VER
Dado que tenha/nao tenha o direito "SETUP_ARV_CUSTOS_CDI_VER"
E que tenha/nao tenha acesso na tela "Custos"
Entao clicar na aba "CDI"

@SETUP_ARV_CUSTOS_CUSTO_CAPTACAO_VER
Cenario: Validar direito SETUP_ARV_CUSTOS_CUSTO_CAPTACAO_VER
Dado que tenha/nao tenha o direito "SETUP_ARV_CUSTOS_CUSTO_CAPTACAO_VER"
E que tenha/nao tenha acesso na tela "Custos"
Entao clicar na aba "CUSTO DE CAPTAÇÃO"

@SETUP_ARVCONFIGURACOES_GERAIS_ATRIBUICAOCATEGORIAPRECO_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito SETUP_ARVCONFIGURACOES_GERAIS_ATRIBUICAOCATEGORIAPRECO_VER
Dado que tenha/nao tenha o direito "SETUP_ARVCONFIGURACOES_GERAIS_ATRIBUICAOCATEGORIAPRECO_VER"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao localizar o frame "Atribuição de categoria/preço"

@SETUP_ARVCONFIGURACOES_GERAIS_RAMOSDEATIVIDADERESTRITOS_EDITAR
Cenario: Validar direito SETUP_ARVCONFIGURACOES_GERAIS_RAMOSDEATIVIDADERESTRITOS_EDITAR
Dado que tenha/nao tenha o direito "SETUP_ARVCONFIGURACOES_GERAIS_RAMOSDEATIVIDADERESTRITOS_EDITAR"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao clicar no botao "Editar dados" do frame "Ramos de atividade restritos"

@SETUP_ARVCONFIGURACOES_GERAIS_RAMOSDEATIVIDADERESTRITOS_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito SETUP_ARVCONFIGURACOES_GERAIS_RAMOSDEATIVIDADERESTRITOS_VER
Dado que tenha/nao tenha o direito "SETUP_ARVCONFIGURACOES_GERAIS_RAMOSDEATIVIDADERESTRITOS_VER"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao localizar o frame "Ramos de atividade restritos"

@SETUP_ARV_CUSTOS_CDI_INCLUIR
Cenario: Validar direito SETUP_ARV_CUSTOS_CDI_INCLUIR
Dado que tenha/nao tenha o direito "SETUP_ARV_CUSTOS_CDI_INCLUIR"
E que tenha/nao tenha acesso na tela "Custos"
E clicar na aba "CDI"
Entao clicar no botao "Incluir"

@CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAORESERVAFINANCEIRA_EXPORTAR
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAORESERVAFINANCEIRA_EXPORTAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAORESERVAFINANCEIRA_EXPORTAR"
E que tenha/nao tenha acesso na tela "Exceção_antecipaçãoVendas"
E o sistema exibira/nao exibira a tela "Exceção"
Entao o botao "Exportar" estara habilitado/desabilitado


@SETUP_ARV_CUSTOS_CUSTO_CAPTACAO_EDITAR
Cenario: Validar direito SETUP_ARV_CUSTOS_CUSTO_CAPTACAO_EDITAR
Dado que tenha/nao tenha o direito "SETUP_ARV_CUSTOS_CUSTO_CAPTACAO_EDITAR"
E que tenha/nao tenha acesso na tela "Custos"
Quando clicar na aba "CUSTO DE CAPTAÇÃO"
E selecionar o botao: "incluir - custo de captacao"
E informar "29,22" no campo "previsto - incluir"
Entao clicar no botao: "confirmar - custo de captacao - incluir"
Quando clicar no botao: "ok"
E clicar na acao "editar - antecipação de vendas - custos"
Quando informar "35,00" no campo "previsto - editar"
E clicar no botao: "confirmar - custo de captacao - editar"
Entao clicar no botao: "ok - editar"

@CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAO_CARTAONAOPRESENTE_EDITAR
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAO_CARTAONAOPRESENTE_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAO_CARTAONAOPRESENTE_EDITAR"
E que tenha/nao tenha acesso na tela "Exceção_antecipaçãoVendas"
Quando clicar na aba "Cartão não presente"
Entao o link "Incluir" deve estar habilitado/desabilitado
Quando clicar selecionar a opcao "Individualmente"
E informar "1007595105" no campo "numero do cliente - excecao"
Quando clicar no botao "OK"
Entao clicar no botao "Confirmar"

@CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAGERAL_EDITAR
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAGERAL_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAGERAL_EDITAR"
E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
E que tenha/nao tenha acesso na tela "Consulta geral"
Entao o botao "Editar" devera estar habilitado/desabilitado

@CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_GERAIS_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_GERAIS_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_GERAIS_VER"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao o sistema exibira/nao exibira a tela "Antecipação de Vendas - Configurações Gerais"

@CONFIGURACOES_ANTECIPACAOVENDAS_CONFGERAIS_CARTAONAOPRESENTE_VER
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_CONFGERAIS_CARTAONAOPRESENTE_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_CONFGERAIS_CARTAONAOPRESENTE_VER"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao localizar o frame "Cartão não presente"

@CONFIGURACOES_ANTECIPACAOVENDAS_CONFGERAIS_CARTAONAOPRESENTE_EDITAR
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_CONFGERAIS_CARTAONAOPRESENTE_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_CONFGERAIS_CARTAONAOPRESENTE_EDITAR"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao clicar no botao "Editar dados" do frame "Cartão não presente"

@CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAORESERVAFINANCEIRA_VER
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAORESERVAFINANCEIRA_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAORESERVAFINANCEIRA_VER"
E que tenha/nao tenha acesso na tela "Exceção_antecipaçãoVendas"
Entao o sistema exibira/nao exibira a tela "Exceção"

@CONFIGURACOES_ANTECIPACAOVENDAS_GERAL_ANTECIPACAOPROGRAMADA_EDITAR
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_GERAL_ANTECIPACAOPROGRAMADA_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_GERAL_ANTECIPACAOPROGRAMADA_EDITAR"
E que tenha/nao tenha acesso na tela "controleDeAcaoDeChargeback"
E selecionar a opcao "Débito/Crédito" no campo "Tipo Ação" da tela Controle de acao de chargeback
E informar o periodo de "11/09/2016" ate "14/09/2016"
Quando clicar no botao "Pesquisar"
Entao o botao "Exportar" devera estar habilitado/desabilitado

@CONFIGURACOES_ANTECIPACAOVENDAS_GERAL_ANTECIPACAOPROGRAMADA_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_GERAL_ANTECIPACAOPROGRAMADA_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_GERAL_ANTECIPACAOPROGRAMADA_VER"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao localizar o frame "Antecipação programada"

@SETUP_ARV_CUSTOS_CUSTO_OPERACIONAL_EDITAR
Cenario: Validar direito SETUP_ARV_CUSTOS_CUSTO_OPERACIONAL_EDITAR
Dado que tenha/nao tenha o direito "SETUP_ARV_CUSTOS_CUSTO_OPERACIONAL_EDITAR"
E que tenha/nao tenha acesso na tela "Custos"
Quando clicar na aba "CUSTO OPERACIONAL"
#E selecionar o botao "Incluir"
#E informar "29,22" no campo "mesa-custo-operacional"
#Entao clicar no botao "Confirmar"
#Quando clicar no botao "ok"
E clicar na acao "editar - CUSTO OPERACIONAL - custos"
Quando informar "35,00" no campo "mesa-custo-operacional"
E clicar no botao "Confirmar"
#Entao clicar no botao "OK"

@CONFIGURACOES_AQUISICAORECEBIVEIS_EXCECAO_ANTECIPPRAZOFLEXIVEL_VER
Cenario: Validar direito CONFIGURACOES_AQUISICAORECEBIVEIS_EXCECAO_ANTECIPPRAZOFLEXIVEL_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_AQUISICAORECEBIVEIS_EXCECAO_ANTECIPPRAZOFLEXIVEL_VER"
E que tenha/nao tenha acesso na tela "Exceção_antecipaçãoVendas"
Entao o sistema exibira/nao exibira a tela "Exceção"
Quando clicar na aba "Antecipação de Prazo Flexível"

@CONFIGURACOES_AQUISICAORECEBIVEIS_EXCECAO_ANTECIPPRAZOFLEXIVEL_EDITAR
Cenario: Validar direito CONFIGURACOES_AQUISICAORECEBIVEIS_EXCECAO_ANTECIPPRAZOFLEXIVEL_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_AQUISICAORECEBIVEIS_EXCECAO_ANTECIPPRAZOFLEXIVEL_EDITAR"
E que tenha/nao tenha acesso na tela "Exceção_antecipaçãoVendas"
Quando clicar na aba "Antecipação de Prazo Flexível"
E clicar na aba "Incluir_PrazoFlexivel"
Entao podera/nao podera acessar a aba "Incluir_PrazoFlexivel"

#@SETUP_ARV_CUSTOS_PROARV_TARIFA_LIQUIDACAO_VER
#Cenario: Validar direito SETUP_ARV_CUSTOS_PROARV_TARIFA_LIQUIDACAO_VER
#Dado que tenha/nao tenha o direito "SETUP_ARV_CUSTOS_PROARV_TARIFA_LIQUIDACAO_VER"
#E que tenha/nao tenha acesso na tela "Custos_antecipaçãoVendas"
#Entao o sistema exibira/nao exibira a tela "Antecipação de Vendas - Custos"

#@SETUP_ARV_CUSTOS_PROARV_TARIFA_LIQUIDACAO_EDITAR
#Cenario: Validar direito SETUP_ARV_CUSTOS_PROARV_TARIFA_LIQUIDACAO_VER
#Dado que tenha/nao tenha o direito "SETUP_ARV_CUSTOS_PROARV_TARIFA_LIQUIDACAO_VER"
#E que tenha/nao tenha acesso na tela "Custos_antecipaçãoVendas"
#Entao o sistema exibira/nao exibira a tela "Antecipação de Vendas - Custos"

#@SETUP_ARV_CUSTOS_PROARV_PARAMETROS_VER
#Cenario: Validar direito SETUP_ARV_CUSTOS_PROARV_TARIFA_LIQUIDACAO_VER
#Dado que tenha/nao tenha o direito "SETUP_ARV_CUSTOS_PROARV_TARIFA_LIQUIDACAO_VER"
#E que tenha/nao tenha acesso na tela "Custos_antecipaçãoVendas"
#Entao o sistema exibira/nao exibira a tela "Antecipação de Vendas - Custos"

#@SETUP_ARV_CUSTOS_PROARV_PARAMETROS_EDITAR
#Cenario: Validar direito SETUP_ARV_CUSTOS_PROARV_TARIFA_LIQUIDACAO_VER
#Dado que tenha/nao tenha o direito "SETUP_ARV_CUSTOS_PROARV_TARIFA_LIQUIDACAO_VER"
#E que tenha/nao tenha acesso na tela "Custos_antecipaçãoVendas"
#Entao o sistema exibira/nao exibira a tela "Antecipação de Vendas - Custos"
