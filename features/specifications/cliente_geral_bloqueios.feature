#language: pt

@CLIENTES_CADASTRO_BLOQUEIOS
Funcionalidade: Validar os direitos na tela Cliente > Cadastro > Informacoes do cliente > Bloqueios

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTES_GERAL_BLOQUEIOS_MOTIVO_ANALISEDECOBRANCA_EDITAR
Cenario: Validar direito CLIENTES_GERAL_BLOQUEIOS_MOTIVO_ANALISEDECOBRANCA_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_GERAL_BLOQUEIOS_MOTIVO_ANALISEDECOBRANCA_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar na aba "Bloqueios"
Entao poderei/nao poderei editar o item com motivo "Análise de cobrança"

@CLIENTES_GERAL_BLOQUEIOS_MOTIVO_PREVENCAOESEGURANCA_EDITAR
Cenario: Validar direito CLIENTES_GERAL_BLOQUEIOS_MOTIVO_PREVENCAOESEGURANCA_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_GERAL_BLOQUEIOS_MOTIVO_PREVENCAOESEGURANCA_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar na aba "Bloqueios"
Entao poderei/nao poderei editar o item com motivo "Análise de prevenção e segurança"

@CLIENTES_GERAL_BLOQUEIOS_TIPO_ANTECIPACAOVENDAS_EDITAR
Cenario: Validar direito CLIENTES_GERAL_BLOQUEIOS_TIPO_ANTECIPACAOVENDAS_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_GERAL_BLOQUEIOS_TIPO_ANTECIPACAOVENDAS_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar na aba "Bloqueios"
Entao poderei/nao poderei editar o item com motivo "Antecipação de vendas"

@CLIENTES_GERAL_BLOQUEIOS_TIPO_PRAZOFLEXIVEL_EDITAR
Cenario: Validar direito CLIENTES_GERAL_BLOQUEIOS_TIPO_PRAZOFLEXIVEL_EDITAR
Dado que tenha/nao tenha o direito "CLIENTES_GERAL_BLOQUEIOS_TIPO_PRAZOFLEXIVEL_EDITAR"
E que tenha/nao tenha acesso na tela "Informações do cliente"
E clicar na aba "Bloqueios"
Entao poderei/nao poderei editar o item com motivo "Prazo flexível"
