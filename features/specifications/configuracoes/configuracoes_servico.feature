#language: pt
@CONFIGURACOES_SERVICO
Funcionalidade: Validar os direitos na tela Configurações > Serviços

Contexto:
Dado que eu faca login

@CONFIGURACOES_SERVICOS_CONTRATOPADRAO_VER
Cenario: Validar direito CONFIGURACOES_SERVICOS_CONTRATOPADRAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_SERVICOS_CONTRATOPADRAO_VER"
E que tenha/nao tenha acesso na tela "Contrato padrão"
Quando Clicar no combo "Selecione" e selecionar a opcao "Serviço"
E Clicar em "Selecione" para selecionar a opcao "Todos"
E Clicar em "Selecione" e selecionar a opcao "Plano Máquina"
E Clicar em "Selecione" e selecionar a opcao "Plano de benefícios agenda"
E Clicar em "Selecione" e selecionar a opcao "Agenda Financeira"
E Clicar em "Selecione" e selecionar a opcao "Atual"
Quando clicar no botao "Pesquisar"
Entao localizar o frame "Resultado"
