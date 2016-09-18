
Quando(/^realizar uma pesquisa com situacao "([^"]*)"$/) do |situacao|
  next if @pass_test == true
  demanda = Demandas.new
  demanda.pesquisa_alcada(situacao)
end

E(/^selecionar visualizar no primeiro item da tela Alcadas$/) do
  next if @pass_test == true
  demanda = Demandas.new
  demanda.selecionar_primeiro_item_alcada
end

Entao(/^o botao "([^"]*)" da tela de Alcadas estara habilitado\/desabilitado$/) do |botao|
  next if @pass_test == true
  utils = Utils.new
  statusBtn = utils.validar_botao(botao)
  if !statusBtn && @tem_direito
    fail("Usuario nao pode clicar no botao no qual tem direito")
  elsif statusBtn && !@tem_direito
    fail("Usuario pode clicar no botao no qual nao tem direito")
  end
end

Entao(/^podera visualizar os limites de Alcada$/) do
  next if @pass_test == true
  demanda = Demandas.new
  validaLimite = demanda.validar_visualizar_limites
  if !validaLimite && @tem_direito
    fail("Usuario nao pode clicar no botao no qual tem direito")
  elsif validaLimite && !@tem_direito
    fail("Usuario pode clicar no botao no qual nao tem direito")
  end
end
