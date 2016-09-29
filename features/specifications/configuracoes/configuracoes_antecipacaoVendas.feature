#language: pt

@CONFIGURACOES_ANTECIPACAOVENDAS
Funcionalidade: Validar os direitos na tela Configurações > Antecipação de vendas

Contexto:
Dado que eu faca login

@CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAGERAL_VER
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAGERAL_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAGERAL_VER"
E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
E que tenha/nao tenha acesso na tela "Consulta geral"
Entao o sistema exibira/nao exibira a tela "Precificação"

@CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAPORCANAL_VER
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAPORCANAL_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAPORCANAL_VER"
E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
E clicar na aba "Consulta por canal"

@CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOESGERAIS_TAXAEFETIVAMAXIMA_VER
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOESGERAIS_TAXAEFETIVAMAXIMA_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOESGERAIS_TAXAEFETIVAMAXIMA_VER"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao localizar o frame "Taxa efetiva máxima"

@CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_RESERVAFINANCEIRA_VER
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

# Lucas >>>
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

@SETUP_ARVCONFIGURACOES_GERAIS_ATRIBUICAOCATEGORIAPRECO_VER
Cenario: Validar direito SETUP_ARVCONFIGURACOES_GERAIS_ATRIBUICAOCATEGORIAPRECO_VER
Dado que tenha/nao tenha o direito "SETUP_ARVCONFIGURACOES_GERAIS_ATRIBUICAOCATEGORIAPRECO_VER"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao localizar o frame "Atribuição de categoria/preço"

@SETUP_ARVCONFIGURACOES_GERAIS_RAMOSDEATIVIDADERESTRITOS_EDITAR
Cenario: Validar direito SETUP_ARVCONFIGURACOES_GERAIS_RAMOSDEATIVIDADERESTRITOS_EDITAR
Dado que tenha/nao tenha o direito "SETUP_ARVCONFIGURACOES_GERAIS_RAMOSDEATIVIDADERESTRITOS_EDITAR"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao clicar no botao "Editar dados" do frame "Ramos de atividade restritos"

@SETUP_ARVCONFIGURACOES_GERAIS_RAMOSDEATIVIDADERESTRITOS_VER
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
Entao clicar no botao "Exportar"

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
# Lucas <<<

# Rafael >>>
@CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_GERAIS_VER
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
# Rafael <<<

# Demis >>>
@CONFIGURACOES_ANTECIPACAOVENDAS_GERAL_ANTECIPACAOPROGRAMADA_EDITAR
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_GERAL_ANTECIPACAOPROGRAMADA_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_GERAL_ANTECIPACAOPROGRAMADA_EDITAR"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao clicar no botao "Editar dados" do frame "Antecipação programada"

@CONFIGURACOES_ANTECIPACAOVENDAS_GERAL_ANTECIPACAOPROGRAMADA_VER
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_GERAL_ANTECIPACAOPROGRAMADA_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_GERAL_ANTECIPACAOPROGRAMADA_VER"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
Entao localizar o fram "Antecipação programada"
# Demis <<<
