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
E clicar no botao "Editar dados" do frame "taxa efetiva máxima"

@CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_RESERVAFINANCEIRA_EDITAR
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_RESERVAFINANCEIRA_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_RESERVAFINANCEIRA_EDITAR"
E que tenha/nao tenha acesso na tela "Geral_antecipaçãoVendas"
E clicar no botao "Editar dados" do frame "Reserva financeira"

@CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_PRECOESPECIAL_EDITAR
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_PRECOESPECIAL_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_PRECOESPECIAL_EDITAR"
E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
Quando clicar na aba "Preço Especial"
E clicar na aba "Incluir"
Entao o sistema exibira/nao exibira a tela "Precificação"

### DEMIS ==>
@CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_VER
Cenário: Validar direito CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_VER"
E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
Quando clicar na aba "Preço Especial"
Entao a aplicacao exibira/nao exibira o painel "Resultados"

#@CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_DETALHE_VER
#Cenário: Validar direito CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_DETALHE_VER
#Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_DETALHE_VER"
#E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
#Quando clicar na aba "Preço Especial"
#E clicar no ícone de acao visualizar "Lupa"
#Entao a aplicacao exibira/nao exibira o pop-up "Detalhe do preço especial"

#@CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_INCLUIR
#Cenário: Validar direito CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_INCLUIR
#Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_INCLUIR"
#E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
#Quando clicar na aba "Preço Especial"
#E clicar no ícone de acao visualizar "Lupa"
#Entao a aplicacao exibira/nao exibira o pop-up "Detalhe do preço especial"

#@CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_EDITAR
#Cenário: Validar direito CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_EDITAR
#Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_EDITAR"
#E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
#Quando clicar na aba "Preço Especial"
#E clicar no ícone de acao visualizar "Lupa"
#Entao a aplicacao exibira/nao exibira o pop-up "Detalhe do preço especial"

#@CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_REMOVER
#Cenário: Validar direito CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_REMOVER
#Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_REMOVER"
#E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
#Quando clicar na aba "Preço Especial"
#E clicar no ícone de acao visualizar "Lupa"
#Entao a aplicacao exibira/nao exibira o pop-up "Detalhe do preço especial"
### <== DEMIS

### LUCAS
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
### LUCAS
