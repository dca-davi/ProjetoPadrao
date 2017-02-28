#language: pt

@ALL @CLIENTES_CADASTRO_BLOQUEIOS
Funcionalidade: Validar os direitos na tela Cliente > Cadastro > Informacoes do cliente > Bloqueios

Contexto:
Dado que eu faca login
E informe o EC "2000060131"

@CLIENTES_GERAL_BLOQUEIOS_MOTIVO_ANALISEDECOBRANCA_EDITAR
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA
Cenario: CT.SEGINFO - [AUT] CLIENTES_GERAL_BLOQUEIOS_MOTIVO_ANALISEDECOBRANCA_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_GERAL_BLOQUEIOS_MOTIVO_ANALISEDECOBRANCA_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar na aba "Bloqueios", "0"
Entao poderei/nao poderei editar o item com motivo "Análise de cobrança"

@CLIENTES_GERAL_BLOQUEIOS_MOTIVO_PREVENCAOESEGURANCA_EDITAR
Cenario: CT.SEGINFO - [AUT] CLIENTES_GERAL_BLOQUEIOS_MOTIVO_PREVENCAOESEGURANCA_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_GERAL_BLOQUEIOS_MOTIVO_PREVENCAOESEGURANCA_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar na aba "Bloqueios", "0"
Entao poderei/nao poderei editar o item com motivo "Análise de prevenção e segurança"

@CLIENTES_GERAL_BLOQUEIOS_TIPO_ANTECIPACAOVENDAS_EDITAR
Cenario: CT.SEGINFO - [AUT] CLIENTES_GERAL_BLOQUEIOS_TIPO_ANTECIPACAOVENDAS_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_GERAL_BLOQUEIOS_TIPO_ANTECIPACAOVENDAS_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar na aba "Bloqueios", "0"
Entao poderei/nao poderei editar o item com motivo "Antecipação de vendas"

@CLIENTES_GERAL_BLOQUEIOS_TIPO_PRAZOFLEXIVEL_EDITAR
Cenario: CT.SEGINFO - [AUT] CLIENTES_GERAL_BLOQUEIOS_TIPO_PRAZOFLEXIVEL_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_GERAL_BLOQUEIOS_TIPO_PRAZOFLEXIVEL_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar na aba "Bloqueios", "0"
Entao poderei/nao poderei editar o item com motivo "Prazo flexível"
