#language: pt

@OPERACOES_HIERARQUIA
Funcionalidade: Validar os direitos na tela Operacoes > Hierarquia > Grupo de pagamento

Contexto:
Dado que eu faca login

@OPERACOES_HIERARQUIA_GRUPODEPAGAMENTO_VER
Cenario: Validar direito OPERACOES_HIERARQUIA_GRUPODEPAGAMENTO_VER
Dado que tenha/nao tenha o direito "OPERACOES_HIERARQUIA_GRUPODEPAGAMENTO_VER"
E que tenha/nao tenha acesso na tela "Grupo de pagamento"
Quando clicar na aba "PESQUISAR"
E selecionar a opcao "Nº do cliente individual" do campo "Pesquisar grupo por"
E informar "1007595105" no campo "numero do cliente individual"
Entao clicar no botao "Pesquisar"
