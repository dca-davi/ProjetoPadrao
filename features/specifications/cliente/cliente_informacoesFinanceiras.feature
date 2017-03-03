#language: pt

@ALL @CLIENTES_INFORMACOESFINANCEIRAS
Funcionalidade: Validar os direitos na tela Cliente > Extratos > Resumo Financeiro

Contexto:
Dado que eu faca login
#E informe o EC "1014766947"
E informe o EC "1018242187"

@CLIENTES_INFORMACOESFINANCEIRAS_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @TESOURARIA_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CENTRAL_ANTECIPACAO_ANALISTA @CANAIS_ALTERNATIVOS_ANALISTA @CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
@JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_INFORMACOESFINANCEIRAS_VER
Dado que tenha/nao tenha o direito "CLIENTES_INFORMACOESFINANCEIRAS_VER"
E que tenha/nao tenha acesso na tela "Resumo financeiro"
Entao o sistema exibira/nao exibira a tela "Resumo financeiro", "1"

@CLIENTES_INFORMACOESFINANCEIRAS_BUSCAAVANCADA_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @LOGISTICA_DE_ATENDIMENTO_A_CLIENTES_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO @TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA
@CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA @TESOURARIA_ANALISTA
@CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA @GESTAO_ECONOMICA_ANALISTA
@CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_INFORMACOESFINANCEIRAS_BUSCAAVANCADA_VER
Dado que tenha/nao tenha o direito "CLIENTES_INFORMACOESFINANCEIRAS_BUSCAAVANCADA_VER"
E que tenha/nao tenha acesso na tela "Resumo financeiro"
Entao o sistema exibira/nao exibira a tela "Resumo financeiro", "1"

@CLIENTES_INFORMACOESFINANCEIRAS_EXPORTAR
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@GESTAO_ECONOMICA_ANALISTA @JURIDICO_CONTENCIOSO_ANALISTA
Cenario: CT.SEGINFO - [AUT] CLIENTES_INFORMACOESFINANCEIRAS_EXPORTAR
Dado que tenha/nao tenha o direito "CLIENTES_INFORMACOESFINANCEIRAS_EXPORTAR"
E que tenha/nao tenha acesso na tela "Resumo financeiro"
Quando selecionar um valor na tabela de Informacoes financeiras
Entao o botao "Exportar", "1" devera estar habilitado/desabilitado

@CLIENTES_INFORMACOESFINANCEIRAS_INTERCAMBIO_VER
@BACKOFFICE_ANALISTA_FORNECEDOR @CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO @TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA
@CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
Cenario: CT.SEGINFO - [AUT] CLIENTES_INFORMACOESFINANCEIRAS_INTERCAMBIO_VER
Dado que tenha/nao tenha o direito "CLIENTES_INFORMACOESFINANCEIRAS_INTERCAMBIO_VER"
E que tenha/nao tenha acesso na tela "Resumo financeiro"
#E selecionar o item "vendas" de "hoje", "0"
E selecionar o item "vendas" de "calendario 15 Fevereiro 2017", "0"
Quando clicar no item em consolidado de vendas "1"

@CLIENTES_INFORMACOESFINANCEIRAS_VENDASCONSOLIDADAS_INTERCAMBIO_VER
@BACKOFFICE_ANALISTA_FORNECEDOR @CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO @TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA
@CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
Cenario: CT.SEGINFO - [AUT] CLIENTES_INFORMACOESFINANCEIRAS_VENDASCONSOLIDADAS_INTERCAMBIO_VER
Dado que tenha/nao tenha o direito "CLIENTES_INFORMACOESFINANCEIRAS_VENDASCONSOLIDADAS_INTERCAMBIO_VER"
E que tenha/nao tenha acesso na tela "Resumo financeiro"
#E selecionar o item "vendas" de "ontem", "0"
E selecionar o item "vendas" de "calendario 15 Fevereiro 2017", "0"
Quando clicar no item em consolidado de vendas "0"
E Expandir o campo da transação de venda
Então Validar o frame "Valor do intercâmbio - detalhado"

@CLIENTES_INFORMACOESFINANCEIRAS_DADOSDOCHIP_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_HELP_DESK_ANALISTA
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @TESOURARIA_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CENTRAL_ANTECIPACAO_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CLIENTES_INFORMACOESFINANCEIRAS_DADOSDOCHIP_VER
Dado que tenha/nao tenha o direito "CLIENTES_INFORMACOESFINANCEIRAS_DADOSDOCHIP_VER"
E que tenha/nao tenha acesso na tela "Resumo financeiro"
#E selecionar o item "vendas" de "ontem", "0"
E selecionar o item "vendas" de "calendario 15 Fevereiro 2017", "0"
Quando clicar no item em consolidado de vendas "0"
E clicar no item da transacao de vendas "0"
Entao localizar o frame "Dados do Chip - Envio", "1"

@CLIENTES_INFORMACOESFINANCEIRAS_ENVIOPARABANDEIRA_VER
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@TESOURARIA_ANALISTA
Cenario: CT.SEGINFO - [AUT] CLIENTES_INFORMACOESFINANCEIRAS_ENVIOPARABANDEIRA_VER
Dado que tenha/nao tenha o direito "CLIENTES_INFORMACOESFINANCEIRAS_ENVIOPARABANDEIRA_VER"
E que tenha/nao tenha acesso na tela "Resumo financeiro"
E selecionar o item "vendas" de "ontem", "0"
#E selecionar o item "vendas" de "calendario 15 Fevereiro 2017", "0"
Quando clicar no item em consolidado de vendas "0"
E clicar no item da transacao de vendas "0"
Entao localizar o frame "Dados do Chip - Envio", "1"

@CLIENTES_EXTRATO_RESUMOFINANCEIRO_HISTORICOVENDAS_CICLODEVIDAEMISSOR_VER
Cenario: CT.SEGINFO - [AUT] CLIENTES_EXTRATO_RESUMOFINANCEIRO_HISTORICOVENDAS_CICLODEVIDAEMISSOR_VER
Dado que tenha/nao tenha o direito "CLIENTES_EXTRATO_RESUMOFINANCEIRO_HISTORICOVENDAS_CICLODEVIDAEMISSOR_VER"
E que tenha/nao tenha acesso na tela "Resumo financeiro"
E selecionar o item "vendas" de "ontem", "0"
#E selecionar o item "vendas" de "calendario 15 Fevereiro 2017", "0"
Quando clicar no item em consolidado de vendas "0"
E clicar no item da transacao de vendas "0"
Entao localizar o frame "Ciclo de Vida Emissor", "1"
