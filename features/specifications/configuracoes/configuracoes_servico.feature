#language: pt
@ALL @CONFIGURACOES_SERVICO
Funcionalidade: Validar os direitos na tela Configurações > Serviços

Contexto:
Dado que eu faca login

@CONFIGURACOES_SERVICOS_CONTRATOPADRAO_VER
Cenario: Validar direito CONFIGURACOES_SERVICOS_CONTRATOPADRAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_SERVICOS_CONTRATOPADRAO_VER"
E que tenha/nao tenha acesso na tela "Contrato padrão"
E selecionar a opcao "Serviço" no campo "Tipo"
E selecionar a opcao "Todos" no campo "Serviço"
E selecionar a opcao "Plano Máquina" no campo "Item"
E selecionar a opcao "Plano de benefícios agenda" no campo "Nome do Contrato"
E selecionar a opcao "Agenda Financeira" no campo "Forma de faturamento"
E selecionar a opcao "Atual" no campo "Vigência"
Quando clicar no botao "Pesquisar"
Entao localizar o frame "Resultado"

@CONFIGURACOES_SERVICOS_INDICESECONOMICOS_VER
Cenario: Validar direito CONFIGURACOES_SERVICOS_INDICESECONOMICOS_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_SERVICOS_INDICESECONOMICOS_VER"
E que tenha/nao tenha acesso na tela "Índices econômicos"
Entao o sistema exibira/nao exibira a tela "Índices econômicos"

@CONFIGURACOES_SERVICOS_INDICESECONOMICOS_INCLUIR
Cenario: Validar direito CONFIGURACOES_SERVICOS_INDICESECONOMICOS_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_SERVICOS_INDICESECONOMICOS_VER"
E que tenha/nao tenha acesso na tela "Índices econômicos"
Quando selecionar o Indice "IGPM Acumulado nos Últimos 12 Meses"
E clicar no botao "Pesquisar"
Entao o botao "Incluir" devera estar habilitado/desabilitado

@CONFIGURACOES_SERVICOS_PARAMETROS_VER
Cenario: Validar direito CONFIGURACOES_SERVICOS_PARAMETROS_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_SERVICOS_PARAMETROS_VER"
E que tenha/nao tenha acesso na tela "Parâmetros"
Entao o sistema exibira/nao exibira a tela "Parâmetros"

@CONFIGURACOES_SERVICOS_PARAMETROS_EDITAR
Cenario: Validar direito CONFIGURACOES_SERVICOS_PARAMETROS_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_SERVICOS_PARAMETROS_EDITAR"
E que tenha/nao tenha acesso na tela "Parâmetros"
Entao clicar na acao "Editar"

@CONFIGURACOES_SERVICOS_PRECOPADRAO_VER
Cenario: Validar direito CONFIGURACOES_SERVICOS_PRECOPADRAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_SERVICOS_PRECOPADRAO_VER"
E que tenha/nao tenha acesso na tela "Preço padrão"
Entao o sistema exibira/nao exibira a tela "Preço padrão"
