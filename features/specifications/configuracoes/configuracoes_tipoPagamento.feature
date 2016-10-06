#language: pt

@ALL @CONFIGURACOES_TIPO_PAGAMENTO
Funcionalidade: Validar os direitos na tela Configuracoes > Tipo de pagamentos

Contexto:
Dado que eu faca login

@CONFIGURACOES_PRECO_VER
Cenario: Validar direito CONFIGURACOES_PRECO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRECO_VER"
E que tenha/nao tenha acesso na tela "Preço padrão"
Entao o sistema exibira/nao exibira a tela "Preço padrão"

@CONFIGURACOES_PRECO_EDITAR
Cenario: Validar direito CONFIGURACOES_PRECO_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_PRECO_EDITAR"
E que tenha/nao tenha acesso na tela "Preço padrão"
Quando clicar na aba "ATUALIZAR"
Entao podera/nao podera acessar a aba "ATUALIZAR"

@CONFIGURACOES_TIPODEPAGAMENTO_VER @RELACIONAMENTO_SUPORTE_COMERCIAL_ANALISTA
Cenario: Validar direito CONFIGURACOES_TIPODEPAGAMENTO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_TIPODEPAGAMENTO_VER"
E que tenha/nao tenha acesso na tela "Pesquisa"
Entao o sistema exibira/nao exibira a tela "Tipo de pagamento"

@CONFIGURACOES_TIPODEPAGAMENTO_EDITAR
Cenario: Validar direito CONFIGURACOES_TIPODEPAGAMENTO_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_TIPODEPAGAMENTO_EDITAR"
E que tenha/nao tenha acesso na tela "Pesquisa"
Quando clicar no botao "Pesquisar"
E clicar na acao "Visualizar"
Entao o botao "Editar" devera estar habilitado/desabilitado
