#language: pt

@CONFIGURACOES_ANTECIPACAOVENDAS
Funcionalidade: Validar os direitos na tela Configurações > Antecipação de vendas

Contexto:
Dado que eu faca login

@CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAGERAL_VER
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAGERAL_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAGERAL_VER"
E que tenha/nao tenha acesso na tela "Precificação"
E que tenha/nao tenha acesso na tela "Consulta geral"
Entao o sistema exibira/nao exibira a tela "Precificação"

@CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAPORCANAL_VER
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAPORCANAL_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_PRECIFICACAO_CONSULTAPORCANAL_VER"
E que tenha/nao tenha acesso na tela "Precificação"
Entao o sistema exibira/nao exibira a tela "Precificação"

@CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOESGERAIS_TAXAEFETIVAMAXIMA_VER
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOESGERAIS_TAXAEFETIVAMAXIMA_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOESGERAIS_TAXAEFETIVAMAXIMA_VER"
E que tenha/nao tenha acesso na tela "Geral"
Entao o sistema exibira/nao exibira a tela "Antecipação de Vendas - Configurações Gerais"

@CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_RESERVAFINANCEIRA_VER
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_RESERVAFINANCEIRA_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_CONFIGURACOES_RESERVAFINANCEIRA_VER"
E que tenha/nao tenha acesso na tela "Geral"
Entao o sistema exibira/nao exibira a tela "Antecipação de Vendas - Configurações Gerais"

@CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAO_CARTAONAOPRESENTE_VER
Cenario: Validar direito CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAO_CARTAONAOPRESENTE_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAO_CARTAONAOPRESENTE_VER"
E que tenha/nao tenha acesso na tela "Exceção"
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
