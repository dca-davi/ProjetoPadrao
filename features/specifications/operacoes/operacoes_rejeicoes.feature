#language: pt
#encoding: utf-8

@ALL @OPERACOES_REJEICOES
Funcionalidade: Validar os direitos na tela Operacoes > Rejeicoes

Contexto:
Dado que eu faca login
E informe o EC "1010756114"

@OPERACOES_REJEICOESBANDEIRA_VER
@BACKOFFICE_ANALISTA_FORNECEDOR @CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO @CHARGEBACK_ANALISTA_INTERCAMBIO
@CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
Cenario: CT.SEGINFO - [AUT] OPERACOES_REJEICOESBANDEIRA_VER
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOESBANDEIRA_VER"
E que tenha/nao tenha acesso na tela "Bandeira"
Entao o sistema exibira/nao exibira a tela "Bandeira"

@OPERACOES_REJEICOESCAPTURA_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @CENTRAL_HELP_DESK_ANALISTA
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO
@TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA @GESTAO_ECONOMICA_ANALISTA
@CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA @JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR
@ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REJEICOESCAPTURA_VER
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOESCAPTURA_VER"
E que tenha/nao tenha acesso na tela "Captura"
Entao o sistema exibira/nao exibira a tela "Captura"

@OPERACOES_REJEITADOS_PAGAMENTOSEDEBITOS_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@GESTAO_ECONOMICA_ANALISTA @JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR
@ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REJEITADOS_PAGAMENTOSEDEBITOS_VER
Dado que tenha/nao tenha o direito "OPERACOES_REJEITADOS_PAGAMENTOSEDEBITOS_VER"
E que tenha/nao tenha acesso na tela "Depósitos e débitos"
Entao o sistema exibira/nao exibira a tela "Depósitos | Débitos"

@OPERACOES_REJEICOESBANDEIRA_EXPORTAR
@CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO @CHARGEBACK_ANALISTA_INTERCAMBIO @GESTAO_ECONOMICA_ANALISTA
@CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
Cenario: CT.SEGINFO - [AUT] OPERACOES_REJEICOESBANDEIRA_EXPORTAR
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOESBANDEIRA_EXPORTAR"
E que tenha/nao tenha acesso na tela "Bandeira"
Quando informar os filtros na tela "Bandeira" e clicar no botao "Pesquisar"
Entao o botao "Exportar" estara habilitado/desabilitado

@OPERACOES_REJEITADOS_PAGAMENTOSEDEBITOS_EXPORTAR
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@GESTAO_ECONOMICA_ANALISTA
Cenario: CT.SEGINFO - [AUT] OPERACOES_REJEITADOS_PAGAMENTOSEDEBITOS_EXPORTAR
Dado que tenha/nao tenha o direito "OPERACOES_REJEITADOS_PAGAMENTOSEDEBITOS_EXPORTAR"
E que tenha/nao tenha acesso na tela "Depósitos e débitos"
Quando informar os filtros na tela "Depósitos | Débitos" e clicar no botao "Pesquisar"
Entao o botao "Exportar" estara habilitado/desabilitado

@OPERACOES_REJEICOES_PAGAMENTOSDEBITOS_ANULAR_EDITAR
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA
Cenario: CT.SEGINFO - [AUT] OPERACOES_REJEICOES_PAGAMENTOSDEBITOS_ANULAR_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOES_PAGAMENTOSDEBITOS_ANULAR_EDITAR"
E que tenha/nao tenha acesso na tela "Depósitos e débitos"
E selecionar a opcao "Regular"
E selecionar a opcao "Crédito"
E informar "237-BANCO BRADESCO S.A." no campo "Banco"
E selecionar "VISA" no combo-box Bandeira
E informar "01/11/2015" no campo "data-de"
E informar "10/10/2016" no campo "data-ate"
E clicar no botao "Pesquisar"
Entao selecionar o check-box da linha "1" na coluna "8" da tabela resultados
E clicar no botao "Continuar"
E selecionar a opcao "Baixa manual"
E selecionar "Retorno para a agenda" no combo-box do pop-up
E clicar no botao "Confirmar"
E clicar no botao "Sim"
E clicar no botao "OK"
Entao clicar na aba "ANULAÇÃO"
E selecionar a opcao "Por Banco/Bandeira"
E selecionar a opcao "Crédito" da aba Anulacao
E selecionar a opcao "Baixa manual"
E informar "237-BANCO BRADESCO S.A." no campo "Banco"
E selecionar "VISA" no combo-box Bandeira
E clicar no botao "Pesquisar"
Entao selecionar o check-box da linha "1" na coluna "8" da tabela resultados
E clicar no botao "Confirmar"
E clicar no botao "Sim"
E clicar no botao "OK"

@OPERACOES_REJEICOESCAPTURA_DETALHES_REMOVER
Cenario: CT.SEGINFO - [AUT] OPERACOES_REJEICOESCAPTURA_DETALHES_REMOVER
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOESCAPTURA_DETALHES_REMOVER"
E que tenha/nao tenha acesso na tela "Captura"
E clicar na aba "TRATAMENTO"
Quando selecionar a opcao "Exclusão"
E informar "06/09/2016" no campo "data de rejeicao - de"
E informar "06/10/2016" no campo "data de rejeicao - ate"
Quando clicar no botao "Pesquisar" da tela captura
E clicar na acao "Editar"
Entao clicar no botao "Excluir"

@OPERACOES_REJEICOESCAPTURA_EXPORTAR
@BACKOFFICE_ANALISTA_FORNECEDOR @CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO @TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA
@GESTAO_ECONOMICA_ANALISTA @CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
Cenario: CT.SEGINFO - [AUT] OPERACOES_REJEICOESCAPTURA_EXPORTAR
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOESCAPTURA_EXPORTAR"
E que tenha/nao tenha acesso na tela "Captura"
E informar "06/09/2016" no campo "data de rejeicao - de"
E informar "06/10/2016" no campo "data de rejeicao - ate"
Quando clicar no botao "Pesquisar"
Entao clicar no botao exportar

@OPERACOES_REJEICOESCAPTURA_TRATAMENTO_ANULACAO_INCLUIR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REJEICOESCAPTURA_TRATAMENTO_ANULACAO_INCLUIR
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOESCAPTURA_TRATAMENTO_ANULACAO_INCLUIR"
E que tenha/nao tenha acesso na tela "Captura"
E clicar na aba "TRATAMENTO"
Quando selecionar a opcao "Reentrada"
E informar "06/09/2016" no campo "data de rejeicao Tratamento - de"
E informar "10/09/2016" no campo "data de rejeicao Tratamento - ate"
Quando clicar no botao "Pesquisar"
Entao o botao "Reentrada" estara habilitado/desabilitado

@OPERACOES_REJEICOES_MANUTENCOES_CADASTRAIS_EDITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REJEICOES_MANUTENCOES_CADASTRAIS_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOES_MANUTENCOES CADASTRAIS_EDITAR"
E que tenha/nao tenha acesso na tela "Manutenções cadastrais"
E clicar no botao "Pesquisar"
Quando clicar na acao "Tratar"
Entao o botao "Sim" estara habilitado/desabilitado

@OPERACOES_REJEICOES_MANUTENCOES_CADASTRAIS_VER
Cenario: CT.SEGINFO - [AUT] OPERACOES_REJEICOES_MANUTENCOES_CADASTRAIS_VER
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOES_MANUTENCOES_CADASTRAIS_VER"
E que tenha/nao tenha acesso na tela "Manutenções cadastrais"
Entao o botao "Pesquisar" estara habilitado/desabilitado

@OPERACOES_MASTER_REJEITADOS_PAGAMENTOSEDEBITOS_EDITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_MASTER_REJEITADOS_PAGAMENTOSEDEBITOS_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_MASTER_REJEITADOS_PAGAMENTOSEDEBITOS_EDITAR"
E que tenha/nao tenha acesso na tela "Depósitos e débitos"
E selecionar a opcao "Regular"
E selecionar a opcao "Crédito"
E selecionar a opcao "Débito"
E informar "104-CAIXA ECONOMICA FEDERAL S.A." no campo "Banco"
E informar "01/09/2016" no campo "data-de"
E informar "09/09/2016" no campo "data-ate"
E clicar no botao "Pesquisar"
Entao selecionar o check-box todos na coluna "8" da tabela resultados

@OPERACOES_REJEICOESBANDEIRA_ELO_DINERS_DETALHES_EDITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REJEICOESBANDEIRA_ELO_DINERS_DETALHES_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOESBANDEIRA_ELO_DINERS_DETALHES_EDITAR"
E que tenha/nao tenha acesso na tela "Bandeira"
Quando informar "01092016" no campo data inicial de rejeicao
E informar "09092016" no campo data final de rejeicao
E selecionar a opcao "Elo" do combo-box "Bandeira"
E clicar no botao "Pesquisar"
Entao clicar na acao "Visualizar"
E o botao "Editar todos" estara habilitado/desabilitado

@OPERACOES_REJEICOESBANDEIRA_MASTERCARD_DETALHES_EDITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REJEICOESBANDEIRA_MASTERCARD_DETALHES_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOESBANDEIRA_MASTERCARD_DETALHES_EDITAR"
E que tenha/nao tenha acesso na tela "Bandeira"
Quando informar "01092016" no campo data inicial de rejeicao
E informar "09092016" no campo data final de rejeicao
E selecionar a opcao "Mastercard" do combo-box "Bandeira"
E clicar no botao "Pesquisar"
Entao clicar na acao "Visualizar"
E o botao "Editar todos" estara habilitado/desabilitado

@OPERACOES_REJEICOESBANDEIRA_VISA_DETALHES_TCR0_EDITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REJEICOESBANDEIRA_VISA_DETALHES_TCR0_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOESBANDEIRA_VISA_DETALHES_TCR0_EDITAR"
E que tenha/nao tenha acesso na tela "Bandeira"
Quando informar "01092016" no campo data inicial de rejeicao
E informar "09092016" no campo data final de rejeicao
E selecionar a opcao "Visa" do combo-box "Bandeira"
E clicar no botao "Pesquisar"
Entao clicar na acao "Visualizar"
E o botao "Editar todos" estara habilitado/desabilitado

@OPERACOES_REJEICOES_CAPTURA_DETALHES_SALVAR_INCLUIR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REJEICOES_CAPTURA_DETALHES_SALVAR_INCLUIR
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOES_CAPTURA_DETALHES_SALVAR_INCLUIR"
E que tenha/nao tenha acesso na tela "Captura"
E clicar na aba "TRATAMENTO"
Quando selecionar a opcao "Exclusão"
E informar "03/10/2016" no campo "data de rejeicao - de"
E informar "07/10/2016" no campo "data de rejeicao - ate"
Quando clicar no botao "Pesquisar" da tela captura
E clicar na acao "Editar"
Entao clicar no botao "Excluir"
