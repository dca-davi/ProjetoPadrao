#language: pt

@ALL @cliente_extrato_PesquisaAvancada
Funcionalidade: Validar os direitos na tela Cliente > extrato > Pesquisa avancada

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@CLIENTES_NUMERODOCARTAOABERTO_VER
Cenario: Validar direito CLIENTES_NUMERODOCARTAOABERTO_VER
Dado que tenha/nao tenha o direito "CLIENTES_NUMERODOCARTAOABERTO_VER"
E que tenha/nao tenha acesso na tela "Pesquisa Avançada"
Entao informar "05/09/2016" no campo "data_inicio_pesq_avan_extrato"
E informar "04/10/2016" no campo "data_fim_pesq_avan_extrato"
E informar "8804" no campo "4_dig_cartao_pesq_avan_extrato"
Entao clicar no botao "Pesquisar"
