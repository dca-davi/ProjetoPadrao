#language: pt
#encoding: utf-8

@OPERACOES_REJEICOES
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


@OPERACOES_REJEICOES_MANUTENCOES_CADASTRAIS_VER
Cenario: Validar direito OPERACOES_REJEICOES_MANUTENCOES_CADASTRAIS_VER
Dado que tenha/nao tenha o direito "OPERACOES_REJEICOES_MANUTENCOES_CADASTRAIS_VER"
E que tenha/nao tenha acesso na tela "Manutenções cadastrais"
Quando selecionar a opcao "Rejeitada" do campo "Situação da solicitação"
Entao clicar no botao "Pesquisar"
