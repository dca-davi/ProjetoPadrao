#language: pt

@ALL @CLIENTE_EXTRATO
Funcionalidade: Validar os direitos na tela Cliente > Extrato

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTES_NUMERODOCARTAOABERTO_VER
Cenario: CT.SEGINFO - [AUT] CLIENTES_NUMERODOCARTAOABERTO_VER
Dado que tenha/nao tenha o direito "CLIENTES_NUMERODOCARTAOABERTO_VER"
E que tenha/nao tenha acesso na tela "Pesquisa Avançada"
Entao informar "01/02/2016" no campo "data_inicio_pesq_avan_extrato"
E informar "17/02/2016" no campo "data_fim_pesq_avan_extrato"
E informar "8804" no campo "4_dig_cartao_pesq_avan_extrato"
Entao clicar no botao "Pesquisar", "1"

@CLIENTES_EXTRATOS_CARTACIRCULARIZACAO_DIARIO_EXPORTAR @R4
Cenario: CT.SEGINFO - [AUT] CLIENTES_EXTRATOS_CARTACIRCULARIZACAO_DIARIO_EXPORTAR
Dado que tenha/nao tenha o direito "CLIENTES_EXTRATOS_CARTACIRCULARIZACAO_DIARIO_EXPORTAR "
E que tenha/nao tenha acesso na tela "Carta de circularização"
Entao o botao "Exportar", "1" estara habilitado/desabilitado

@CLIENTES_EXTRATOS_CARTACIRCULARIZACAO_MENSAL_EXPORTAR @R4
Cenario: CT.SEGINFO - [AUT] CLIENTES_EXTRATOS_CARTACIRCULARIZACAO_MENSAL_EXPORTAR
Dado que tenha/nao tenha o direito "CLIENTES_EXTRATOS_CARTACIRCULARIZACAO_MENSAL_EXPORTAR "
E que tenha/nao tenha acesso na tela "Carta de circularização"
E clicar na aba "Mensal", "0"
Entao o botao "Exportar", "1" estara habilitado/desabilitado
