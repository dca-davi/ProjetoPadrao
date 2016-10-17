#language: pt

@ALL @CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL
Funcionalidade: Validar os direitos na tela Configurações > Antecipação de vendas > Precificacao

Contexto:
Dado que eu faca login

# Demis >>>
@CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_VER
@GESTAO_ECONOMICA_ANALISTA
Cenário: Validar direito CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_VER"
E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
Quando clicar na aba "Preço Especial"
Entao a aplicacao exibira/nao exibira o painel grid da tela cacfv "Resultados"

@CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_DETALHE_VER
@GESTAO_ECONOMICA_ANALISTA
Cenário: Validar direito CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_DETALHE_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_DETALHE_VER"
E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
Quando clicar na aba "Preço Especial"
E clicar na acao "Visualizar"
Entao localizar o frame "Detalhe do preço especial"

@CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_INCLUIR
Cenário: Validar direito CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_INCLUIR
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_INCLUIR"
E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
Quando clicar na aba "Preço Especial"
E clicar no link acao "Incluir"
Entao  localizar o frame "Dados da Pesquisa"

@CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_EDITAR
Cenário: Validar direito CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_EDITAR"
E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
Quando clicar na aba "Preço Especial"
E clicar na acao "Editar"
Entao localizar o frame "Edição do preço especial"

@CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_REMOVER
Cenário: Validar direito CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_REMOVER
Dado que tenha/nao tenha o direito "CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_REMOVER"
E que tenha/nao tenha acesso na tela "Precificação_antecipaçãoVendas"
Quando clicar na aba "Preço Especial"
E clicar na acao "Remover"
Entao localizar o frame "Cancelar"
# Demis <<<
