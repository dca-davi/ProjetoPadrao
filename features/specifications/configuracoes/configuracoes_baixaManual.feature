  #language: pt

@ALL @CONFIGURACOES_BAIXA_MANUAL
Funcionalidade: Validar os direitos na tela Configuracoes > Baixa Manual

Contexto:
Dado que eu faca login

@CONFIGURACOES_BAIXAMANUAL_VER
@PLANEJA_BACKOFFICE_COBRAN_FATURA_ANALISTA @CENTRAL_DE_RELACIONAMENTO_ANALISTA @CENTRAL_ANTECIPACAO_COORDENADOR
@CENTRAL_ANTECIPACAO_ANALISTA @CRM_COORDENADOR @ANTECIPACAO_DE_VENDAS_TESOURARIA_ANALISTA
@ANTECIPACAO_DE_VENDAS_TESOURARIA_COORDENADOR
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_BAIXAMANUAL_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_BAIXAMANUAL_VER"
E que tenha/nao tenha acesso na tela "Baixa manual"
Entao o sistema exibira/nao exibira a tela "Baixa manual", "1"

@CONFIGURACOES_BAIXAMANUAL_CODIGOS_EDITAR
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_BAIXAMANUAL_CODIGOS_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_BAIXAMANUAL_CODIGOS_EDITAR"
E que tenha/nao tenha acesso na tela "Baixa manual"
Quando clicar na aba "Códigos", "0"
Entao o botao "Editar", "1" devera estar habilitado/desabilitado

@CONFIGURACOES_BAIXAMANUAL_MOTIVOS_EDITAR
Cenario: CT.SEGINFO - [AUT] CONFIGURACOES_BAIXAMANUAL_MOTIVOS_EDITAR
Dado que tenha/nao tenha o direito "CONFIGURACOES_BAIXAMANUAL_MOTIVOS_EDITAR"
E que tenha/nao tenha acesso na tela "Baixa manual"
Quando clicar na aba "Motivos", "0"
Entao o botao de acao "Editar" do frame "Motivos de baixa manual" devera estar habilitado/desabilitado
