  #language: pt

@ALL @CONFIGURACOES_BAIXA_MANUAL
Funcionalidade: Validar os direitos na tela Configuracoes > Baixa Manual

Contexto:
Dado que eu faca login

@CONFIGURACOES_BAIXAMANUAL_VER
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CENTRAL_ANTECIPACAO_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: Validar direito CONFIGURACOES_BAIXAMANUAL_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_BAIXAMANUAL_VER"
E que tenha/nao tenha acesso na tela "Baixa manual"
Entao o sistema exibira/nao exibira a tela "Baixa manual"

@CONFIGURACOES_BAIXAMANUAL_CODIGOS_EDITAR
Cenario: Validar direito CONFIGURACOES_BAIXAMANUAL_CODIGOS_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_BAIXAMANUAL_CODIGOS_EDITAR"
E que tenha/nao tenha acesso na tela "Baixa manual"
Quando clicar na aba "Códigos"
Entao o botao "Editar" devera estar habilitado/desabilitado

@CONFIGURACOES_BAIXAMANUAL_MOTIVOS_EDITAR
Cenario: Validar direito CONFIGURACOES_BAIXAMANUAL_MOTIVOS_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_BAIXAMANUAL_MOTIVOS_EDITAR"
E que tenha/nao tenha acesso na tela "Baixa manual"
Quando clicar na aba "Motivos"
Entao o botao de acao "Editar" do frame "Motivos de baixa manual" devera estar habilitado/desabilitado
