#language: pt

@CONFIGURACOES_HISTORICO
Funcionalidade: Validar os direitos na tela Configuracoes > Historico

Contexto:
Dado que eu faca login

@CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_CUSTOCAPTACAO_VER
Cenario: Validar direito CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_CUSTOCAPTACAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_CUSTOCAPTACAO_VER"
E que tenha/nao tenha acesso na tela "Histórico de manutenção"
Quando informar "Antecipação de vendas" no campo "Tópico de manutenção"
Entao posso/nao posso informar "CUSTO DE CAPTAÇÃO" no campo "Subtópico de manutenção"

@CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_CUSTOOPERACIONAL_VER
Cenario: Validar direito CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_CUSTOOPERACIONAL_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_CUSTOOPERACIONAL_VER"
E que tenha/nao tenha acesso na tela "Histórico de manutenção"
Quando informar "Antecipação de vendas" no campo "Tópico de manutenção"
Entao posso/nao posso informar "CUSTO OPERACIONAL" no campo "Subtópico de manutenção"

@CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_PARAMETROSCONFIGGERAL_VER
Cenario: Validar direito CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_PARAMETROSCONFIGGERAL_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_PARAMETROSCONFIGGERAL_VER"
E que tenha/nao tenha acesso na tela "Histórico de manutenção"
Quando informar "Antecipação de vendas" no campo "Tópico de manutenção"
Entao posso/nao posso informar "CONFIGURAÇÃO GERAL" no campo "Subtópico de manutenção"

@CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_PROARVPARAMETROS_VER
Cenario: Validar direito CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_PROARVPARAMETROS_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_PROARVPARAMETROS_VER"
E que tenha/nao tenha acesso na tela "Histórico de manutenção"
Quando informar "Antecipação de vendas" no campo "Tópico de manutenção"
Entao posso/nao posso informar "PARÂMETROS PROARV" no campo "Subtópico de manutenção"

@CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_PROARVTARIFA_VER
Cenario: Validar direito CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_PROARVTARIFA_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_PROARVTARIFA_VER"
E que tenha/nao tenha acesso na tela "Histórico de manutenção"
Quando informar "Antecipação de vendas" no campo "Tópico de manutenção"
Entao posso/nao posso informar "TARIFA DE LIQUIDAÇÃO PROARV" no campo "Subtópico de manutenção"

@CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_TABELA_PRECO_VER
Cenario: Validar direito CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_TABELA_PRECO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_HISTORICO_HISTORICOMANUTENCOES_TABELA_PRECO_VER"
E que tenha/nao tenha acesso na tela "Histórico de manutenção"
Quando informar "Antecipação de vendas" no campo "Tópico de manutenção"
Entao posso/nao posso informar "PREÇO" no campo "Subtópico de manutenção"

@CONFIGURACOES_HISTORICOMANUTENCOES_FINANCEIRAS_VER
Cenario: Validar direito CONFIGURACOES_HISTORICOMANUTENCOES_FINANCEIRAS_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_HISTORICOMANUTENCOES_FINANCEIRAS_VER"
E que tenha/nao tenha acesso na tela "Histórico de manutenção"
Quando informar "Cliente" no campo "Tópico de manutenção"
E clicar no botao "Pesquisar"
Então localizar o frame "Resultados"

@CONFIGURACOES_HISTORICOALTERACOES_CADASTROCIELO_VER
Cenario: Validar direito CONFIGURACOES_HISTORICOALTERACOES_CADASTROCIELO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_HISTORICOALTERACOES_CADASTROCIELO_VER"
E que tenha/nao tenha acesso na tela "Histórico de manutenção"
Quando informar "Cliente" no campo "Tópico de manutenção"
E clicar no botao "Pesquisar"
Então localizar o frame "Resultados"
