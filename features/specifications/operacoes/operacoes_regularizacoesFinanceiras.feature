#language: pt
@Operacoes_regularizacoesFinanceiras
Funcionalidade: Validar os direitos na tela Operacoes > Regularizações financeiras

Contexto:
Dado que eu faca login

@OPERACOES_CONSULTA_TRANSACAO_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@CENTRAL_HELP_DESK_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA
@CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA @TESOURARIA_ANALISTA
@CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA @GESTAO_ECONOMICA_ANALISTA
@JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_CONSULTA_TRANSACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_CONSULTA_TRANSACAO_VER"
E que tenha/nao tenha acesso na tela "Consulta de transações"
Entao o sistema exibira/nao exibira a tela "Consulta de transações", "1"

@OPERACOES_REGULARIZACOES_AJUSTE_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO
@CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CENTRAL_ANTECIPACAO_ANALISTA @GESTAO_ECONOMICA_ANALISTA @CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
@JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_AJUSTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_AJUSTE_VER"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
Entao clicar na aba "Pesquisar", "0"

@OPERACOES_REGULARIZACOES_MASTER_AJUSTE_EDITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_MASTER_AJUSTE_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_MASTER_AJUSTE_EDITAR"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
Quando clicar na aba "Incluir", "0"
Entao podera/nao podera acessar a aba "Incluir"

@OPERACOES_REGULARIZACOES_AJUSTE_SOLICITAR
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@JURIDICO_CONTENCIOSO_ANALISTA
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_AJUSTE_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_AJUSTE_SOLICITAR"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
Quando clicar na aba "Incluir", "0"
Entao podera/nao podera acessar a aba "Incluir"

@CLIENTES_NUMERODOCARTAOABERTO_DIGITAR
@BACKOFFICE_ANALISTA_FORNECEDOR @CHARGEBACK_ANALISTA_INTERCAMBIO
Cenario: CT.SEGINFO - [AUT] CLIENTES_NUMERODOCARTAOABERTO_DIGITAR
Dado que tenha/nao tenha o direito "CLIENTES_NUMERODOCARTAOABERTO_DIGITAR"
E que tenha/nao tenha acesso na tela "Consulta de transações"
Entao o campo "N° do cartão aberto" existe/nao existe

@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_VER
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_VER"
E que tenha/nao tenha acesso na tela "Envio de débitos ao cliente"
Entao clicar no botao "Pesquisar", "1"

@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_EDITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_EDITAR"
E que tenha/nao tenha acesso na tela "Envio de débitos ao cliente"
Entao informar "104-CAIXA ECONOMICA FEDERAL S.A." no campo "Banco"
E clicar no botao "Pesquisar", "0"
E selecionar o check-box da linha "1" na coluna "10" da tabela resultados
E clicar no botao "Confirmar", "0"
E clicar no botao "Sim", "1"

@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_VER
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_VER"
E que tenha/nao tenha acesso na tela "Envio de débitos ao cliente"
Entao clicar na aba "ANULAÇÃO", "0"
E clicar no botao "Pesquisar" da aba anulacao

@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_EDITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_EDITAR"
E que tenha/nao tenha acesso na tela "Envio de débitos ao cliente"
E clicar na aba "ANULAÇÃO", "0"
E clicar no botao "Pesquisar" da aba anulacao
Entao selecionar o check-box da linha "1" na coluna "10" da tabela resultados
E clicar no botao "Confirmar" da aba anulacao
E clicar no botao "Sim" da aba anulacao

@OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA @GESTAO_ECONOMICA_ANALISTA
@JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_VER"
E que tenha/nao tenha acesso na tela "Reprocessamento de vendas"
Quando informar "2913" no campo "numero da solicitacao - reprocessamento de vendas"
Entao clicar no botao "Pesquisar", "1"

@OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_DETALHE_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA @GESTAO_ECONOMICA_ANALISTA
@JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_DETALHE_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_DETALHE_VER"
E que tenha/nao tenha acesso na tela "Reprocessamento de vendas"
Quando informar "2913" no campo "numero da solicitacao - reprocessamento de vendas"
E clicar no botao "Pesquisar", "0"
Então clicar na acao "detalhar - reprocessamento de vendas", "1"


@OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITACAO_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA
@CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CENTRAL_ANTECIPACAO_ANALISTA @GESTAO_ECONOMICA_ANALISTA @CRM_COORDENADOR
@ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITACAO_VER"
E que tenha/nao tenha acesso na tela "Cancelamento e reversão de vendas"
Quando selecionar a opcao "Reversão de cancelamentos"
E informar "13510654" no campo "numero da solicitacao - cancelamento e reversão de vendas"
Entao clicar no botao "Pesquisar", "1"

@OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_EXPORTAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_EXPORTAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_EXPORTAR"
E que tenha/nao tenha acesso na tela "Débitos ao cliente sem retorno"
Quando selecionar "a primeira opcao da coluna Tratamento"
E clicar no botao "Exportar", "0"
Entao clicar no botao "Atualizar", "1"

@OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_VER
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_VER"
E que tenha/nao tenha acesso na tela "Débitos ao cliente sem retorno"
E o sistema exibira/nao exibira a tela "Débito ao cliente sem retorno", "0"
Entao localizar o frame "Resultados", "1"

@OPERACOES_REGULARIZACOES_AJUSTE_DETALHE_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA
@CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO @TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@GESTAO_ECONOMICA_ANALISTA @CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA @JURIDICO_CONTENCIOSO_ANALISTA
@CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_AJUSTE_DETALHE_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_AJUSTE_DETALHE_VER"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
E clicar na aba "Pequisar", "0"
E informar "13507217" no campo "numero da solicitacao - ajustes financeiros"
Quando clicar no botao "Pesquisar", "0"
E clicar na acao "Visualizar Ajustes", "0"
Entao o sistema exibira/nao exibira a tela "Ajustes financeiros - Detalhe", "1"

@OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_SOLICITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_SOLICITAR"
E que tenha/nao tenha acesso na tela "Débitos ao cliente sem retorno"
E selecionar "a primeira opcao da coluna Tratamento"
Quando clicar no botao "Confirmar", "0"
E informar "05/10/2016" no campo "data de liquidação - tratamento"
Entao clicar no botao "Confirmar", "1" da tela de tratamento

@OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITAR
@BACKOFFICE_ANALISTA_FORNECEDOR @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITAR"
E que tenha/nao tenha acesso na tela "Cancelamento e reversão de vendas"
Quando selecionar a opcao "Cancelamento de vendas"
E informar "701206036721204" no campo "codigo da venda"
Quando clicar no botao "Pesquisar", "0"
E clicar na acao "Reverter", "0"
Entao clicar no botao "Reverter", "1"

@OPERACOES_REGULARIZACOES_REPROCESSAMENTO_REENTRADA_SOLICITAR
@BACKOFFICE_ANALISTA_FORNECEDOR @CHARGEBACK_ANALISTA_INTERCAMBIO
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_REPROCESSAMENTO_REENTRADA_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REPROCESSAMENTO_REENTRADA_SOLICITAR"
E que tenha/nao tenha acesso na tela "Reprocessamento de vendas"
Entao clicar na aba "REENTRADA DE VENDA", "0"
Entao informar "1018242187" no campo "n do cliente -reentrada de venda"
E clicar no botao "OK", "0"
E informar "123456" no campo "codigo de autorização-reentrada de venda"
E informar "5308698871257860" no campo "n do cartao aberto-reentrada de venda"
E informar "02/10/2016" no campo "data da autorizacao-reentrada de venda"
E informar "1.234,56" no campo "valor da autorizacao-reentrada de venda"
E informar "1011-MASTERCARD Débito À vista" no campo "tipo de pagamento-reentrada de venda"
E informar "44450498" no campo "terminal-reentrada de venda"
E informar "381347" no campo "nsu-reentrada de venda"
E informar "Teste" no campo "comentario-reentrada de venda"
Entao clicar no botao "Continuar", "1"

@OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_DETALHE_VER
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@GESTAO_ECONOMICA_ANALISTA @JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR
@ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_DETALHE_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_DETALHE_VER"
E que tenha/nao tenha acesso na tela "Cancelamento e reversão de vendas"
Quando selecionar a opcao "Cancelamento de vendas"
E selecionar a opcao "Código"
Quando informar "13522742" no campo "pesquisa - numero do cliente - cancelamento e reversao de vendas"
E clicar no botao "Pesquisar", "0"
Entao clicar na acao "Visualizar", "0"
E o sistema exibira/nao exibira a tela "Detalhe da solicitação de cancelamento de venda", "0"
E clicar no botao "Voltar", "0"
Quando selecionar a opcao "Reversão de cancelamentos"
E informar "13511736" no campo "pesquisa - numero do cliente - cancelamento e reversao de vendas"
Entao clicar no botao "Pesquisar", "0"
E clicar na acao "Visualizar", "0"
Entao o sistema exibira/nao exibira a tela "Detalhe da solicitação de cancelamento de venda", "1"

@OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_SOLICITACAO_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA
@CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CENTRAL_ANTECIPACAO_ANALISTA @GESTAO_ECONOMICA_ANALISTA @JURIDICO_CONTENCIOSO_ANALISTA
@CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_SOLICITACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_SOLICITACAO_VER"
E que tenha/nao tenha acesso na tela "Cancelamento e reversão de vendas"
Quando selecionar a opcao "Cancelamento de vendas"
E selecionar a opcao "Código"
Quando informar "13555626" no campo "pesquisa - numero do cliente - cancelamento e reversao de vendas"
E clicar no botao "Pesquisar", "0"
Entao localizar o frame "Resultados", "1"

@OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_SOLICITAR
@BACKOFFICE_ANALISTA_FORNECEDOR @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_SOLICITAR"
E que tenha/nao tenha acesso na tela "Cancelamento e reversão de vendas"
Entao clicar na aba "Incluir cancelamento", "0"
Entao informar "13/02/2017" no campo "data autorizacao inicio-cancelamento reversao de vendas"
E informar "19/02/2017" no campo "data autorizacao fim-cancelamento reversao de vendas"
E informar "1018242187" no campo "n do cliente -cancelamento reversao de vendas"
# E informar "381347" no campo "nsu-cancelamento reversao de vendas"
E informar "44450498" no campo "terminal-cancelamento reversao de vendas"
Entao clicar no botao "Pesquisar", "0" da aba Incluir Cancelamento
E clicar na acao "Cancelamento", "0"
Entao informar "10,00" no campo "valor cancelamento-cancelamento reversao de vendas"
Entao clicar no botao "Continuar", "1"

@OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITAR
@BACKOFFICE_ANALISTA_FORNECEDOR @CHARGEBACK_ANALISTA_INTERCAMBIO
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITAR"
E que tenha/nao tenha acesso na tela "Reprocessamento de vendas"
Entao clicar na aba "REENTRADA DE VENDA", "0"
Entao informar "1018242187" no campo "n do cliente -reentrada de venda"
E clicar no botao "OK", "0"
E informar "123456" no campo "codigo de autorização-reentrada de venda"
E informar "5308698871257860" no campo "n do cartao aberto-reentrada de venda"
E informar "02/10/2016" no campo "data da autorizacao-reentrada de venda"
E informar "1.234,56" no campo "valor da autorizacao-reentrada de venda"
E informar "1011-MASTERCARD Débito À vista" no campo "tipo de pagamento-reentrada de venda"
E informar "44450498" no campo "terminal-reentrada de venda"
E informar "381347" no campo "nsu-reentrada de venda"
E informar "Teste" no campo "comentario-reentrada de venda"
Entao clicar no botao "Continuar", "1"

@CANAL_BACKOFFICE_VER
Cenario: CT.SEGINFO - [AUT] CANAL_BACKOFFICE_VER
Dado que tenha/nao tenha o direito "CANAL_BACKOFFICE_VER"
E que tenha/nao tenha acesso na tela "Consulta de transações"
Entao o botao "Pesquisar", "1" estara habilitado/desabilitado

@CANAL_CENTRAL_VER
Cenario: CT.SEGINFO - [AUT] CANAL_CENTRAL_VER
Dado que tenha/nao tenha o direito "CANAL_CENTRAL_VER"
E que tenha/nao tenha acesso na tela "Consulta de transações"
Entao o botao "Pesquisar", "1" estara habilitado/desabilitado

@OPERACOES_REGULARIZACOES_MASTER_REPROCESSAMENTO_EDITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_MASTER_REPROCESSAMENTO_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_MASTER_REPROCESSAMENTO_EDITAR"
E que tenha/nao tenha acesso na tela "Reprocessamento de vendas"
Entao clicar na aba "TRATAMENTO DE VENDA", "0"
E informar "04/11/2016" no campo "reprocessamento de vendas - data autorizacao - de"
E informar "04/11/2016" no campo "reprocessamento de vendas - data autorizacao - ate"
E informar "353211" no campo "reprocessamento de vendas - nsu"
Quando clicar no botao "Pesquisar", "0" da tela de tratamento
E clicar na acao "Reverter", "0"
Entao o botao "Continuar", "1" devera estar habilitado/desabilitado

@OPERACOES_REGULARIZACOES_REPROCESSAMENTO_AUTORIZACAO_EDITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_REPROCESSAMENTO_AUTORIZACAO_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REPROCESSAMENTO_AUTORIZACAO_EDITAR"
E que tenha/nao tenha acesso na tela "Reprocessamento de vendas"
Entao clicar na aba "TRATAMENTO DE VENDA", "0"
E informar "04/11/2016" no campo "reprocessamento de vendas - data autorizacao - de"
E informar "04/11/2016" no campo "reprocessamento de vendas - data autorizacao - ate"
E informar "359403" no campo "reprocessamento de vendas - nsu"
Quando clicar no botao "Pesquisar", "0" da tela de tratamento
E clicar na acao "Reverter", "0"
E informar "359403" no campo "reprocessamento de vendas - codigo de autorizacao"
Entao o botao "Continuar", "1" devera estar habilitado/desabilitado

@OPERACOES_REGULARIZACOES_MASTER_CANCELAMENTO_E_REVERSAO_EDITAR
Cenario: CT.SEGINFO - [AUT] OPERACOES_REGULARIZACOES_MASTER_CANCELAMENTO_E_REVERSAO_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_MASTER_CANCELAMENTO_E_REVERSAO_EDITAR"
E que tenha/nao tenha acesso na tela "Cancelamento e reversão de vendas"
E informar "13523883" no campo "cancelamento e reversao de vendas - numero da solicitacao"
E clicar no botao "Pesquisar", "0"
E clicar na acao "Reverter", "0"
Entao o botao "Reverter", "1" devera estar habilitado/desabilitado
