#language: pt

@ALL @RELATORIOS_BANDEIRAS
Funcionalidade: Validar os direitos nos menus Relatorios > bandeiras

Contexto:
Dado que eu faca login

@RELATORIOS_BANDEIRAS_CONTROLEREMESSAS_VER
@CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO @TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA
@CHARGEBACK_ANALISTA_INTERCAMBIO @TESOURARIA_ANALISTA @GESTAO_ECONOMICA_ANALISTA
@CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
Cenario: Validar direito RELATORIOS_BANDEIRAS_CONTROLEREMESSAS_VER
Dado que tenha/nao tenha o direito "RELATORIOS_BANDEIRAS_CONTROLEREMESSAS_VER"
E que tenha/nao tenha acesso na tela "Controle de remessas"
Entao o sistema exibira/nao exibira a tela "Controle de remessas"

@RELATORIOS_BANDEIRAS_CONTROLEREAPRESENTACOES_VER
Cenario: Validar direito RELATORIOS_BANDEIRAS_CONTROLEREAPRESENTACOES_VER
Dado que tenha/nao tenha o direito "RELATORIOS_BANDEIRAS_CONTROLEREAPRESENTACOES_VER"
E que tenha/nao tenha acesso na tela "Controle de reapresentações"
Entao o sistema exibira/nao exibira a tela "Controle de reapresentações"

@RELATORIOS_BANDEIRAS_CONTROLEDEACOESDECHARGEBACK_VER
Cenario: Validar direito RELATORIOS_BANDEIRAS_CONTROLEDEACOESDECHARGEBACK_VER
Dado que tenha/nao tenha o direito "RELATORIOS_BANDEIRAS_CONTROLEDEACOESDECHARGEBACK_VER"
E que tenha/nao tenha acesso na tela "Controle de ação de chargeback"
Entao o sistema exibira/nao exibira a tela "Controle de ação de chargeback"

@RELATORIOS_BANDEIRAS_CONTROLEDEACOESDECHARGEBACK_EXPORTAR
Cenario: Validar direito RELATORIOS_BANDEIRAS_CONTROLEDEACOESDECHARGEBACK_EXPORTAR
Dado que tenha/nao tenha o direito "RELATORIOS_BANDEIRAS_CONTROLEDEACOESDECHARGEBACK_EXPORTAR"
E que tenha/nao tenha acesso na tela "Controle de ação de chargeback"
E selecionar a opcao "Débito/Crédito" no campo "Tipo Ação" da tela Controle de acao de chargeback
E informar o periodo de "11/09/2016" ate "14/09/2016"
Quando clicar no botao "Pesquisar"
Entao o botao "Exportar" devera estar habilitado/desabilitado

@RELATORIOS_BANDEIRAS_CONTROLEREAPRESENTACOES_EXPORTAR
Cenario: Validar direito RELATORIOS_BANDEIRAS_CONTROLEREAPRESENTACOES_EXPORTAR
Dado que tenha/nao tenha o direito "RELATORIOS_BANDEIRAS_CONTROLEREAPRESENTACOES_EXPORTAR"
E que tenha/nao tenha acesso na tela "Controle de reapresentações"
E informar o periodo de "11/09/2016" ate "14/09/2016"
Quando clicar no botao "Pesquisar"
Entao o link "Exportar" devera estar habilitado/desabilitado

@RELATORIOS_BANDEIRAS_CONTROLEREMESSAS_EXPORTAR
@CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO @TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA @TESOURARIA_ANALISTA
@GESTAO_ECONOMICA_ANALISTA @CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
Cenario: Validar direito RELATORIOS_BANDEIRAS_CONTROLEREMESSAS_EXPORTAR
Dado que tenha/nao tenha o direito "RELATORIOS_BANDEIRAS_CONTROLEREMESSAS_EXPORTAR"
E que tenha/nao tenha acesso na tela "Controle de remessas"
Quando informar "0237 - BRADESCO S/A" no campo "Banco"
E clicar no botao "Pesquisar"
Entao o botao "Exportar" devera estar habilitado/desabilitado
