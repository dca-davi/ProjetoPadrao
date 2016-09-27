#language: pt
@CONFIGURACOES_SERVICO
Funcionalidade: Validar os direitos na tela Configurações > Serviços

Contexto:
Dado que eu faca login

@CONFIGURACOES_SERVICOS_CONTRATOPADRAO_VER
Cenario: Validar direito CONFIGURACOES_SERVICOS_CONTRATOPADRAO_VER
Dado que tenha/nao tenha o direito "CONFIGURACOES_SERVICOS_CONTRATOPADRAO_VER"
E que tenha/nao tenha acesso na tela "Contrato padrão"
E selecionar a opcao "Serviço" no campo "Tipo" da tela contrato padrao
E selecionar a opcao "Todos" no campo "Serviço" da tela contrato padrao
E selecionar a opcao "Plano Máquina" no campo "Item" da tela contrato padrao
E selecionar a opcao "Plano de benefícios agenda" no campo "Nome do Contrato" da tela contrato padrao
E selecionar a opcao "Agenda Financeira" no campo "Forma de faturamento" da tela contrato padrao
E selecionar a opcao "Atual" no campo "Vigência" da tela contrato padrao
Quando clicar no botao "Pesquisar"
Entao localizar o frame "Resultado"
