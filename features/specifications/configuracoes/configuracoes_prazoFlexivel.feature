#language: pt

@CONFIGURACOES_PRAZOFLEXIVEL
Funcionalidade: Validar os direitos na tela Configuracoes > Prazo Flexivel

Contexto:
Dado que eu faca login

@CONFIGURACOES_PRAZOFLEXIVEL_GERAL_SHARE_VER
Cenario: Validar direito CONFIGURACOES_PRAZOFLEXIVEL_GERAL_SHARE_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_GERAL_SHARE_VER"
E que tenha/nao tenha acesso na tela "Geral_prazoFlexivel"
Entao o sistema exibira/nao exibira a tela "Geral"

@CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_SEGMENTACAOPRAZO_VER
Cenario: Validar direito CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_SEGMENTACAOPRAZO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_SEGMENTACAOPRAZO_VER"
E que tenha/nao tenha acesso na tela "Precificação_prazoFlexivel"
Entao clicar na aba "Segmentação do Prazo Flexível"

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

@CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_SEGMENTACAOPRAZO_EDITAR
Cenario: Validar direito CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_SEGMENTACAOPRAZO_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_SEGMENTACAOPRAZO_EDITAR"
E que tenha/nao tenha acesso na tela "Precificação_prazoFlexivel"
E clicar na aba "Segmentação do Prazo Flexível"
Entao clicar no botao "Editar" do frame "Dados da segmentação"

@CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_VER
Cenario: Validar direito CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_VER"
E que tenha/nao tenha acesso na tela "Precificação_prazoFlexivel"
E o sistema exibira/nao exibira a tela "Precificação"
Entao clicar no botao "Editar" do frame "Resultados"

@CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_REMOVER
Cenario: Validar direito CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_REMOVER
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_CATEGORIAS_REMOVER"
E que tenha/nao tenha acesso na tela "Precificação_prazoFlexivel"
E o sistema exibira/nao exibira a tela "Precificação"
Entao clicar no botao "Cancelar tabela" do frame "Resultados"

# Demis >>>
@CONFIGURACOES_PRAZOFLEXIVEL_GERAL_ATRIBUICAOCATEGORIAPRECO_EDITAR
Cenario: Validar direito CONFIGURACOES_PRAZOFLEXIVEL_GERAL_ATRIBUICAOCATEGORIAPRECO_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_GERAL_ATRIBUICAOCATEGORIAPRECO_EDITAR"
E que tenha/nao tenha acesso na tela "Geral_prazoFlexivel"
E o sistema exibira/nao exibira a tela "Geral"
Entao clicar no botao "Editar dados" do frame "Atribuição de categoria/preço"

@CONFIGURACOES_PRAZOFLEXIVEL_GERAL_ATRIBUICAOCATEGORIAPRECO_VER
Cenario: Validar direito CONFIGURACOES_PRAZOFLEXIVEL_GERAL_ATRIBUICAOCATEGORIAPRECO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_GERAL_ATRIBUICAOCATEGORIAPRECO_VER"
E que tenha/nao tenha acesso na tela "Geral_prazoFlexivel"
E o sistema exibira/nao exibira a tela "Geral"
# Demis <<<

@CONFIGURACOES_PRAZOFLEXIVEL_EXCECAO_VER
Cenario: Validar direito CONFIGURACOES_PRAZOFLEXIVEL_EXCECAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_EXCECAO_VER"
E que tenha/nao tenha acesso na tela "Exceção_prazoFlexivel"
E o sistema exibira/nao exibira a tela "Exceção"
Entao clicar no botao "Pesquisar"

@CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_PRECOSEALCADAS_EDITAR
Cenario: Validar direito CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_PRECOSEALCADAS_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRAZOFLEXIVEL_PRECIFICACAO_PRECOSEALCADAS_EDITAR"
E que tenha/nao tenha acesso na tela "Precificação_prazoFlexivel"
E clicar na aba "Preços e Alçadas"
Entao clicar no botao "Editar" da aba - Precos e Alcadas
