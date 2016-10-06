#language: pt

@ALL @CONFIGURACOES_DEMANDAS_ALCADAS
Funcionalidade: Validar os direitos na tela Configuracoes > Demandas > Alcadas

Contexto:
Dado que eu faca login

@CONFIGURACOES_DEMANDAS_ALCADAS_INCLUIR
Cenario: Validar direito CONFIGURACOES_DEMANDAS_ALCADAS_INCLUIR
Dado que tenha/nao tenha o direito "CONFIGURACOES_DEMANDAS_ALCADAS_INCLUIR"
E que tenha/nao tenha acesso na tela "Alçadas"
Quando clicar na aba "INCLUIR"
Entao podera/nao podera acessar a aba "INCLUIR"

@CONFIGURACOES_DEMANDAS_ALCADAS_HISTORICOLIMITEALCADA_VER
Cenario: Validar direito CONFIGURACOES_DEMANDAS_ALCADAS_HISTORICOLIMITEALCADA_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_DEMANDAS_ALCADAS_HISTORICOLIMITEALCADA_VER"
E que tenha/nao tenha acesso na tela "Alçadas"
Quando realizar uma pesquisa com situacao "Ativo"
E selecionar visualizar no primeiro item da tela Alcadas
E clicar na aba "Histórico"
Entao podera/nao podera acessar a aba "Histórico"

@CONFIGURACOES_DEMANDAS_ALCADAS_LIMITEALCADA_VER
Cenario: Validar direito CONFIGURACOES_DEMANDAS_ALCADAS_LIMITEALCADA_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_DEMANDAS_ALCADAS_LIMITEALCADA_VER"
E que tenha/nao tenha acesso na tela "Alçadas"
Quando realizar uma pesquisa com situacao "Ativo"
E selecionar visualizar no primeiro item da tela Alcadas
Entao podera visualizar os limites de Alcada

@CONFIGURACOES_DEMANDAS_ALCADAS_LIMITEALCADA_EDITAR
Cenario: Validar direito CONFIGURACOES_DEMANDAS_ALCADAS_LIMITEALCADA_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_DEMANDAS_ALCADAS_LIMITEALCADA_EDITAR"
E que tenha/nao tenha acesso na tela "Alçadas"
Quando realizar uma pesquisa com situacao "Ativo"
E selecionar visualizar no primeiro item da tela Alcadas
Entao o botao "Editar" da tela de Alcadas estara habilitado/desabilitado
