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
Cenario: Validar direito OPERACOES_CONSULTA_TRANSACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_CONSULTA_TRANSACAO_VER"
E que tenha/nao tenha acesso na tela "Consulta de transações"
Entao o sistema exibira/nao exibira a tela "Consulta de transações"

@OPERACOES_REGULARIZACOES_AJUSTE_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO
@CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CENTRAL_ANTECIPACAO_ANALISTA @GESTAO_ECONOMICA_ANALISTA @CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA
@JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: Validar direito OPERACOES_REGULARIZACOES_AJUSTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_AJUSTE_VER"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
Entao clicar na aba "Pesquisar"

@OPERACOES_REGULARIZACOES_MASTER_AJUSTE_EDITAR
Cenario: Validar direito OPERACOES_REGULARIZACOES_MASTER_AJUSTE_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_MASTER_AJUSTE_EDITAR"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
Quando clicar na aba "Incluir"
Entao podera/nao podera acessar a aba "Incluir"

@OPERACOES_REGULARIZACOES_AJUSTE_SOLICITAR
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@JURIDICO_CONTENCIOSO_ANALISTA
Cenario: Validar direito OPERACOES_REGULARIZACOES_AJUSTE_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_AJUSTE_SOLICITAR"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
Quando clicar na aba "Incluir"
Entao podera/nao podera acessar a aba "Incluir"

@CLIENTES_NUMERODOCARTAOABERTO_DIGITAR
@BACKOFFICE_ANALISTA_FORNECEDOR @CHARGEBACK_ANALISTA_INTERCAMBIO
Cenario: Validar direito CLIENTES_NUMERODOCARTAOABERTO_DIGITAR
Dado que tenha/nao tenha o direito "CLIENTES_NUMERODOCARTAOABERTO_DIGITAR"
E que tenha/nao tenha acesso na tela "Consulta de transações"
Entao o campo "N° do cartão aberto" existe/nao existe

@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_VER
Cenario: Validar direito OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_VER"
E que tenha/nao tenha acesso na tela "Envio de débitos ao cliente"
Entao clicar no botao "Pesquisar"

@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_EDITAR
Cenario: Validar direito OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTE_EDITAR"
E que tenha/nao tenha acesso na tela "Envio de débitos ao cliente"
Entao informar "104-CAIXA ECONOMICA FEDERAL S.A." no campo "Banco"
E clicar no botao "Pesquisar"
E selecionar o check-box da linha "1" na coluna "10" da tabela resultados
E clicar no botao "Confirmar"
E clicar no botao "Sim"

@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_VER
Cenario: Validar direito OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_VER"
E que tenha/nao tenha acesso na tela "Envio de débitos ao cliente"
Entao clicar na aba "ANULAÇÃO"
E clicar no botao "Pesquisar" da aba anulacao

@OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_EDITAR
Cenario: Validar direito OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_EDITAR"
E que tenha/nao tenha acesso na tela "Envio de débitos ao cliente"
E clicar na aba "ANULAÇÃO"
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
Cenario: Validar direito OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_VER"
E que tenha/nao tenha acesso na tela "Reprocessamento de vendas"
Quando informar "2913" no campo "numero da solicitacao - reprocessamento de vendas"
Entao clicar no botao "Pesquisar"

@OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_DETALHE_VER
@CADASTRO_ANALISTA_CIELO @CADASTRO_ANALISTA_CIELO_APROVADOR @BACKOFFICE_ANALISTA_FORNECEDOR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA @GESTAO_ECONOMICA_ANALISTA
@JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: Validar direito OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_DETALHE_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITACAO_DETALHE_VER"
E que tenha/nao tenha acesso na tela "Reprocessamento de vendas"
Quando informar "2913" no campo "numero da solicitacao - reprocessamento de vendas"
E clicar no botao "Pesquisar"
Então clicar na acao "detalhar - reprocessamento de vendas"


@OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITACAO_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA
@CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CENTRAL_ANTECIPACAO_ANALISTA @GESTAO_ECONOMICA_ANALISTA @CRM_COORDENADOR
@ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: Validar direito OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITACAO_VER"
E que tenha/nao tenha acesso na tela "Cancelamento e reversão de vendas"
Quando selecionar a opcao "Reversão de cancelamentos"
E informar "13510654" no campo "numero da solicitacao - cancelamento e reversão de vendas"
Entao clicar no botao "Pesquisar"

@OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_EXPORTAR
Cenario: Validar direito OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_EXPORTAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_EXPORTAR"
E que tenha/nao tenha acesso na tela "Débitos ao cliente sem retorno"
Quando selecionar "a primeira opcao da coluna Tratamento"
E clicar no botao "Exportar"
Entao clicar no botao "Atualizar"

@OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_VER
Cenario: Validar direito OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_VER"
E que tenha/nao tenha acesso na tela "Débitos ao cliente sem retorno"
E o sistema exibira/nao exibira a tela "Débito ao cliente sem retorno"
Entao localizar o frame "Resultados"

@OPERACOES_REGULARIZACOES_AJUSTE_DETALHE_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA
@CONTROLE_SISTEMAS_FINANCEIROS_CONCILIACAO @TESOURARIA_E_CONTAS_A_PAGAR_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@GESTAO_ECONOMICA_ANALISTA @CONTABILIDADE_NEGOCIO_E_TRIBUTARIO_ANALISTA @JURIDICO_CONTENCIOSO_ANALISTA
@CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: Validar direito OPERACOES_REGULARIZACOES_AJUSTE_DETALHE_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_AJUSTE_DETALHE_VER"
E que tenha/nao tenha acesso na tela "Ajustes financeiros"
E informar "13507217" no campo "numero da solicitacao - ajustes financeiros"
Quando clicar no botao "Pesquisar"
Entao localizar o frame "Efetivada"

@OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_SOLICITAR
Cenario: Validar direito OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_TRATAMENTODEBITOSEMRETORNO_SOLICITAR"
E que tenha/nao tenha acesso na tela "Débitos ao cliente sem retorno"
E selecionar "a primeira opcao da coluna Tratamento"
Quando clicar no botao "Confirmar"
E informar "05/10/2016" no campo "data de liquidação - tratamento"
Entao clicar no botao "Confirmar" da tela de tratamento

@OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITAR
@BACKOFFICE_ANALISTA_FORNECEDOR @CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA
@CRM_COORDENADOR
Cenario: Validar direito OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REVERSAOCANCELAMENTO_SOLICITAR"
E que tenha/nao tenha acesso na tela "Cancelamento e reversão de vendas"
Quando selecionar a opcao "Cancelamento de vendas"
E informar "627406028342762" no campo "codigo da venda"
Quando clicar no botao "Pesquisar"
E clicar na acao "Reverter"
Entao clicar no botao "Reverter"

@OPERACOES_REGULARIZACOES_REPROCESSAMENTO_REENTRADA_SOLICITAR
@BACKOFFICE_ANALISTA_FORNECEDOR @CHARGEBACK_ANALISTA_INTERCAMBIO
Cenario: Validar direito OPERACOES_REGULARIZACOES_REPROCESSAMENTO_REENTRADA_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REPROCESSAMENTO_REENTRADA_SOLICITAR"
E que tenha/nao tenha acesso na tela "Reprocessamento de vendas"
Entao clicar na aba "REENTRADA DE VENDA"
Entao informar "1018242187" no campo "n do cliente -reentrada de venda"
E clicar no botao "OK"
E informar "123456" no campo "codigo de autorização-reentrada de venda"
E informar "5308698871257860" no campo "n do cartao aberto-reentrada de venda"
E informar "02/10/2016" no campo "data da autorizacao-reentrada de venda"
E informar "1.234,56" no campo "valor da autorizacao-reentrada de venda"
E informar "1011-MASTERCARD Débito À vista" no campo "tipo de pagamento-reentrada de venda"
E informar "44450498" no campo "terminal-reentrada de venda"
E informar "381347" no campo "nsu-reentrada de venda"
E informar "Teste" no campo "comentario-reentrada de venda"
Entao clicar no botao "Continuar"

@OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_DETALHE_VER
@BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CHARGEBACK_ANALISTA_INTERCAMBIO
@CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR @CENTRAL_ANTECIPACAO_ANALISTA
@GESTAO_ECONOMICA_ANALISTA @JURIDICO_CONTENCIOSO_ANALISTA @CRM_COORDENADOR
@ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: Validar direito OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_DETALHE_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_DETALHE_VER"
E que tenha/nao tenha acesso na tela "Cancelamento e reversão de vendas"
Quando selecionar a opcao "Cancelamento de vendas"
E selecionar a opcao "Código"
Quando informar "13522742" no campo "pesquisa - numero do cliente - cancelamento e reversao de vendas"
E clicar no botao "Pesquisar"
Entao clicar na acao "Visualizar"
E o sistema exibira/nao exibira a tela "Detalhe da solicitação de cancelamento de venda"
E clicar no botao "Voltar"
Quando selecionar a opcao "Reversão de cancelamentos"
E informar "13511736" no campo "pesquisa - numero do cliente - cancelamento e reversao de vendas"
Entao clicar no botao "Pesquisar"
E clicar na acao "Visualizar"
Entao o sistema exibira/nao exibira a tela "Detalhe da solicitação de cancelamento de venda"

@OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_SOLICITACAO_VER
@RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA @BACKOFFICE_ANALISTA_FORNECEDOR @PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA
@CHARGEBACK_ANALISTA_INTERCAMBIO @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CENTRAL_ANTECIPACAO_ANALISTA @GESTAO_ECONOMICA_ANALISTA @JURIDICO_CONTENCIOSO_ANALISTA
@CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA @ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: Validar direito OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_SOLICITACAO_VER
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_SOLICITACAO_VER"
E que tenha/nao tenha acesso na tela "Cancelamento e reversão de vendas"
Quando selecionar a opcao "Cancelamento de vendas"
E selecionar a opcao "Código"
Quando informar "13522742" no campo "pesquisa - numero do cliente - cancelamento e reversao de vendas"
E clicar no botao "Pesquisar"
Entao localizar o frame "Resultados"

@OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_SOLICITAR
@BACKOFFICE_ANALISTA_FORNECEDOR @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CRM_COORDENADOR
Cenario: Validar direito OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_CANCELAMENTOVENDAS_SOLICITAR"
E que tenha/nao tenha acesso na tela "Cancelamento e reversão de vendas"
Entao clicar na aba "Incluir cancelamento"
Entao informar "03/09/2016" no campo "data autorizacao inicio-cancelamento reversao de vendas"
E informar "09/09/2016" no campo "data autorizacao fim-cancelamento reversao de vendas"
E informar "1018242187" no campo "n do cliente -cancelamento reversao de vendas"
E informar "381347" no campo "nsu-cancelamento reversao de vendas"
E informar "44450498" no campo "terminal-cancelamento reversao de vendas"
Entao clicar no botao "Pesquisar" da aba Incluir Cancelamento
E clicar na acao "Cancelamento"
Entao informar "1.234,56" no campo "valor cancelamento-cancelamento reversao de vendas"
Entao clicar no botao "Continuar"

@OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITAR
@BACKOFFICE_ANALISTA_FORNECEDOR @CHARGEBACK_ANALISTA_INTERCAMBIO
Cenario: Validar direito OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITAR
Dado que tenha/nao tenha o direito "OPERACOES_REGULARIZACOES_REPROCESSAMENTO_SOLICITAR"
E que tenha/nao tenha acesso na tela "Reprocessamento de vendas"
Entao clicar na aba "REENTRADA DE VENDA"
Entao informar "1018242187" no campo "n do cliente -reentrada de venda"
E clicar no botao "OK"
E informar "123456" no campo "codigo de autorização-reentrada de venda"
E informar "5308698871257860" no campo "n do cartao aberto-reentrada de venda"
E informar "02/10/2016" no campo "data da autorizacao-reentrada de venda"
E informar "1.234,56" no campo "valor da autorizacao-reentrada de venda"
E informar "1011-MASTERCARD Débito À vista" no campo "tipo de pagamento-reentrada de venda"
E informar "44450498" no campo "terminal-reentrada de venda"
E informar "381347" no campo "nsu-reentrada de venda"
E informar "Teste" no campo "comentario-reentrada de venda"
Entao clicar no botao "Continuar"

@CANAL_BACKOFFICE_VER
Cenario: Validar direito CANAL_BACKOFFICE_VER
Dado que tenha/nao tenha o direito "CANAL_BACKOFFICE_VER"
E que tenha/nao tenha acesso na tela "Consulta de transações"
Entao o botao "Pesquisar" estara habilitado/desabilitado

@CANAL_CENTRAL_VER
Cenario: Validar direito CANAL_CENTRAL_VER
Dado que tenha/nao tenha o direito "CANAL_CENTRAL_VER"
E que tenha/nao tenha acesso na tela "Consulta de transações"
Entao o botao "Pesquisar" estara habilitado/desabilitado
