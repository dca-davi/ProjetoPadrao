#language: pt
#encoding: utf-8

@ALL @OPERACOES_REJEICOES
Funcionalidade: Validar os direitos na tela Operacoes > Rejeicoes

Contexto:
Dado que eu faca login
E informe o EC "1018242187"

@OPERACOES_REJEICOESBANDEIRA_VER
Cenario: Validar direito OPERACOES_REJEICOESBANDEIRA_VER
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOESBANDEIRA_VER"
E que tenha/nao tenha acesso na tela "Bandeira"
Entao o sistema exibira/nao exibira a tela "Bandeira"

@OPERACOES_REJEICOESCAPTURA_VER
Cenario: Validar direito OPERACOES_REJEICOESCAPTURA_VER
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOESCAPTURA_VER"
E que tenha/nao tenha acesso na tela "Captura"
Entao o sistema exibira/nao exibira a tela "Captura"

@OPERACOES_REJEITADOS_PAGAMENTOSEDEBITOS_VER
Cenario: Validar direito OPERACOES_REJEITADOS_PAGAMENTOSEDEBITOS_VER
Dado que tenha/nao tenha o direito "OPERACOES_REJEITADOS_PAGAMENTOSEDEBITOS_VER"
E que tenha/nao tenha acesso na tela "Depósitos e débitos"
Entao o sistema exibira/nao exibira a tela "Depósitos | Débitos"

@OPERACOES_REJEICOESBANDEIRA_EXPORTAR
Cenario: Validar direito OPERACOES_REJEICOESBANDEIRA_EXPORTAR
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOESBANDEIRA_EXPORTAR"
E que tenha/nao tenha acesso na tela "Bandeira"
Quando informar os filtros na tela "Bandeira" e clicar no botao "Pesquisar"
Entao o botao "Exportar" estara habilitado/desabilitado

@OPERACOES_REJEITADOS_PAGAMENTOSEDEBITOS_EXPORTAR
Cenario: Validar direito OPERACOES_REJEITADOS_PAGAMENTOSEDEBITOS_EXPORTAR
Dado que tenha/nao tenha o direito "OPERACOES_REJEITADOS_PAGAMENTOSEDEBITOS_EXPORTAR"
E que tenha/nao tenha acesso na tela "Depósitos e débitos"
Quando informar os filtros na tela "Depósitos | Débitos" e clicar no botao "Pesquisar"
Entao o botao "Exportar" estara habilitado/desabilitado

@OPERACOES_REJEICOES_PAGAMENTOSDEBITOS_ANULAR_EDITAR
Cenario: Validar direito OPERACOES_REJEICOES_PAGAMENTOSDEBITOS_ANULAR_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOES_PAGAMENTOSDEBITOS_ANULAR_EDITAR"
E que tenha/nao tenha acesso na tela "Depósitos e débitos"
E selecionar a opcao "Regular"
E selecionar a opcao "Crédito"
E informar "33-BANCO SANTANDER BRASIL S.A." no campo "Banco"
E selecionar "MASTERCARD" no combo-box "Bandeira"
E informar "06/06/2016" no campo "data-de"
E informar "06/10/2016" no campo "data-ate"
E clicar no botao "Pesquisar"

#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

@OPERACOES_REJEICOESCAPTURA_DETALHES_REMOVER
Cenario: Validar direito OPERACOES_REJEICOESCAPTURA_DETALHES_REMOVER
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
Cenario: Validar direito OPERACOES_REJEICOESCAPTURA_EXPORTAR
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOESCAPTURA_EXPORTAR"
E que tenha/nao tenha acesso na tela "Captura"
E informar "06/09/2016" no campo "data de rejeicao - de"
E informar "06/10/2016" no campo "data de rejeicao - ate"
Quando clicar no botao "Pesquisar"
Entao clicar no botao exportar

@OPERACOES_REJEICOES_MANUTENCOES_CADASTRAIS_EDITAR
Cenario: Validar direito OPERACOES_REJEICOES_MANUTENCOES_CADASTRAIS_EDITAR
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOES_MANUTENCOES CADASTRAIS_EDITAR"
E que tenha/nao tenha acesso na tela "Manutenções cadastrais"
E clicar no botao "Pesquisar"
Quando clicar na acao "Tratar"
Entao o botao "Sim" estara habilitado/desabilitado

@OPERACOES_REJEICOES_MANUTENCOES_CADASTRAIS_VER
Cenario: Validar direito OPERACOES_REJEICOES_MANUTENCOES_CADASTRAIS_VER
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOES_MANUTENCOES_CADASTRAIS_VER"
E que tenha/nao tenha acesso na tela "Manutenções cadastrais"
Entao o botao "Pesquisar" estara habilitado/desabilitado
