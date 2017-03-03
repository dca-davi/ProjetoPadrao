#language: pt

@ALL @CONFIGURACOES_PRAZOFLEXIVEL
Funcionalidade: Validar os direitos na tela Configuracoes > Prazo Flexivel

Contexto:
Dado que eu faca login

@CONFIGURACOES_PRAZOFLEXIVEL_GERAL_SHARE_VER
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_PRAZOFLEXIVEL_GERAL_SHARE_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_GERAL_SHARE_VER"
E que tenha/nao tenha acesso na tela "Geral_prazoFlexivel"
Entao o sistema exibira/nao exibira a tela "Geral", "1"

@CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_SEGMENTACAOPRAZO_VER
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_SEGMENTACAOPRAZO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_SEGMENTACAOPRAZO_VER"
E que tenha/nao tenha acesso na tela "Precificação_prazoFlexivel"
Entao clicar na aba "Segmentação do Prazo Flexível", "0"

@CONFIGURACOES_PRAZOFLEXIVEL_GERAL_SHARE_EDITAR
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_PRAZOFLEXIVEL_GERAL_SHARE_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_GERAL_SHARE_EDITAR"
E que tenha/nao tenha acesso na tela "Geral_prazoFlexivel"
E clicar no botao "Editar dados" do frame "parâmetro para cálculo do share", "0"
Entao o sistema exibira/nao exibira a tela "Geral", "1"

@CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_EDITAR
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_EDITAR"
E que tenha/nao tenha acesso na tela "Precificação_prazoFlexivel"
E clicar no botao "Editar" do frame "Resultados", "0"
Entao o sistema exibira/nao exibira a tela "Precificação", "1"

@CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_SEGMENTACAOPRAZO_EDITAR
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_SEGMENTACAOPRAZO_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_SEGMENTACAOPRAZO_EDITAR"
E que tenha/nao tenha acesso na tela "Precificação_prazoFlexivel"
E clicar na aba "Segmentação do Prazo Flexível", "0"
Entao clicar no botao "Editar" do frame "Dados da segmentação", "1"

@CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_VER
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_VER"
E que tenha/nao tenha acesso na tela "Precificação_prazoFlexivel"
E o sistema exibira/nao exibira a tela "Precificação", "0"
Entao clicar no botao "Editar" do frame "Resultados", "1"

@CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_REMOVER
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_REMOVER
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_REMOVER"
E que tenha/nao tenha acesso na tela "Precificação_prazoFlexivel"
E o sistema exibira/nao exibira a tela "Precificação", "0"
Entao clicar no botao "Cancelar tabela" do frame "Resultados", "1"

@CONFIGURACOES_PRAZOFLEXIVEL_GERAL_ATRIBUICAOCATEGORIAPRECO_EDITAR
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_PRAZOFLEXIVEL_GERAL_ATRIBUICAOCATEGORIAPRECO_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_GERAL_ATRIBUICAOCATEGORIAPRECO_EDITAR"
E que tenha/nao tenha acesso na tela "Geral_prazoFlexivel"
E o sistema exibira/nao exibira a tela "Geral", "0"
Entao clicar no botao "Editar dados" do frame "Atribuição de categoria/preço", "1"

@CONFIGURACOES_PRAZOFLEXIVEL_GERAL_ATRIBUICAOCATEGORIAPRECO_VER
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_PRAZOFLEXIVEL_GERAL_ATRIBUICAOCATEGORIAPRECO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_GERAL_ATRIBUICAOCATEGORIAPRECO_VER"
E que tenha/nao tenha acesso na tela "Geral_prazoFlexivel"
E o sistema exibira/nao exibira a tela "Geral", "1"

@CONFIGURACOES_PRAZOFLEXIVEL_EXCECAO_VER
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_PRAZOFLEXIVEL_EXCECAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_EXCECAO_VER"
E que tenha/nao tenha acesso na tela "Exceção_prazoFlexivel"
E o sistema exibira/nao exibira a tela "Exceção", "0"
Entao clicar no botao "Pesquisar", "1"

@CONFIGURACOES_PRAZOFLEXIVEL_EXCECAO_EDITAR
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_PRAZOFLEXIVEL_EXCECAO_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_EXCECAO_EDITAR"
E que tenha/nao tenha acesso na tela "Exceção_prazoFlexivel"
E o sistema exibira/nao exibira a tela "Exceção", "0"
E clicar no botao "Pesquisar", "0"
E clicar na acao "Remover", "1"

@CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_PRECOSEALCADAS_EDITAR
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_PRECOSEALCADAS_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_PRECOSEALCADAS_EDITAR"
E que tenha/nao tenha acesso na tela "Precificação_prazoFlexivel"
E clicar na aba "Preços e Alçadas", "0"
Entao clicar no botao "Editar" da aba - Precos e Alcadas

@CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_PRECOSEALCADAS_VER
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_PRECOSEALCADAS_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_PRECOSEALCADAS_VER"
E que tenha/nao tenha acesso na tela "Precificação_prazoFlexivel"
E clicar na aba "Preços e Alçadas", "0"
Entao podera/nao podera acessar a aba "Preços e Alçadas"
