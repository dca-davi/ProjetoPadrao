#language: pt
#encoding: utf-8

@OPERACOES_ANTECIPACAOVENDAS
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

@OPERACOES_ANTECIPACAO_CANAL_CENTRALDEANTECIPACAO_VER
Cenario: Validar direito OPERACOES_ANTECIPACAO_CANAL_CENTRALDEANTECIPACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_ANTECIPACAO_CANAL_CENTRALDEANTECIPACAO_VER"
E que tenha/nao tenha acesso na tela "Operação de antecipação"
Entao o sistema exibira/nao exibira a tela "Operação de Antecipação"
