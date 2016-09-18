#language: pt

@CONFIGURACOES_PRAZOFLEXIVEL
Funcionalidade: Validar os direitos na tela Configuracoes > Prazo Flexivel

Contexto:
Dado que eu faca login

@CONFIGURACOES_PRAZOFLEXIVEL_GERAL_SHARE_EDITAR
Cenario: Validar direito CONFIGURACOES_PRAZOFLEXIVEL_GERAL_SHARE_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_GERAL_SHARE_EDITAR"
E que tenha/nao tenha acesso na tela "Geral_prazoFlexivel"
E clicar no botao "Editar dados" do frame "parâmetro para cálculo do share"
Entao o sistema exibira/nao exibira a tela "Geral"

@CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_EDITAR
Cenario: Validar direito CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_EDITAR"
E que tenha/nao tenha acesso na tela "Precificação_prazoFlexivel"
E clicar no botao "Editar" do frame "Resultados"
Entao o sistema exibira/nao exibira a tela "Precificação"
