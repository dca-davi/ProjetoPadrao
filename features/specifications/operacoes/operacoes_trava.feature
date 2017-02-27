#language: pt
#encoding: utf-8

@ALL @OPERACOES_TRAVA
Funcionalidade: Validar os direitos na tela Operacoes > Trava

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@OPERACOES_TRAVA_PRAZOVENCIDO_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @BACKOFFICE_ANALISTA_FORNECEDOR
@TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA
Cenario: CT.SEGINFO - [AUT] OPERACOES_TRAVA_PRAZOVENCIDO_VER
Dado que tenha/nao tenha o direito "OPERACOES_TRAVA_PRAZOVENCIDO_VER"
E que tenha/nao tenha acesso na tela "Trava com prazo vencido"
Entao o sistema exibira/nao exibira a tela "Trava com Prazo Vencido", "1"

@OPERACOES_TRAVA_PRAZOVENCIDO_EXPORTAR
@BACKOFFICE_ANALISTA_FORNECEDOR @TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA
Cenario: CT.SEGINFO - [AUT] OPERACOES_TRAVA_PRAZOVENCIDO_EXPORTAR
Dado que tenha/nao tenha o direito "OPERACOES_TRAVA_PRAZOVENCIDO_EXPORTAR"
E que tenha/nao tenha acesso na tela "Trava com prazo vencido"
Entao o botao "Exportar", "1" devera estar habilitado/desabilitado

@OPERACOES_TRAVA_REJEICAO_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_TRAVA_REJEICAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_TRAVA_REJEICAO_VER"
E que tenha/nao tenha acesso na tela "Rejeições"
Entao o sistema exibira/nao exibira a tela "Rejeições", "1"

@OPERACOES_TRAVA_REJEICAO_RELATORIO_EXPORTAR
@BACKOFFICE_ANALISTA_FORNECEDOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_TRAVA_REJEICAO_RELATORIO_EXPORTAR
Dado que tenha/nao tenha o direito "OPERACOES_TRAVA_REJEICAO_RELATORIO_EXPORTAR"
E que tenha/nao tenha acesso na tela "Rejeições"
Quando clicar no botao "Pesquisar", "0"
Entao o botao "Exportar", "1" devera estar habilitado/desabilitado

@OPERACOES_TRAVA_TRAVADESTRAVACLIENTE_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_HELP_DESK_ANALISTA
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_TRAVA_TRAVADESTRAVACLIENTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_TRAVA_TRAVADESTRAVACLIENTE_VER"
E que tenha/nao tenha acesso na tela "Trava e destrava cliente"
Entao o sistema exibira/nao exibira a tela "Trava / Destrava Cliente - Pesquisar", "1"

@OPERACOES_TRAVA_MOVHISTORICOCIP_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @BACKOFFICE_ANALISTA_FORNECEDOR
@TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA
Cenario: CT.SEGINFO - [AUT] OPERACOES_TRAVA_MOVHISTORICOCIP_VER
Dado que tenha/nao tenha o direito "OPERACOES_TRAVA_MOVHISTORICOCIP_VER"
E que tenha/nao tenha acesso na tela "Movimento CIP"
Entao o sistema exibira/nao exibira a tela "Movimento CIP (Varredura)", "1"

@OPERACOES_TRAVA_TRATAMENTOMANUAL_EDITAR
@BACKOFFICE_ANALISTA_FORNECEDOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_TRAVA_TRATAMENTOMANUAL_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_TRAVA_TRATAMENTOMANUAL_EDITAR"
E que tenha/nao tenha acesso na tela "Efetuar trava e destrava manual"
Entao o botao "Salvar", "1" estara habilitado/desabilitado

@OPERACOES_TRAVA_REJEICAO_EDITAR
@BACKOFFICE_ANALISTA_FORNECEDOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_TRAVA_REJEICAO_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_TRAVA_REJEICAO_EDITAR"
E que tenha/nao tenha acesso na tela "Rejeições"
Entao informar "01/05/2016" no campo "data-de"
E informar "10/10/2016" no campo "data-ate"
E clicar no botao "Pesquisar", "0"
Entao selecionar o check-box da linha "1" na coluna "1" da tabela resultados
E clicar no botao "Finalizar", "1"
