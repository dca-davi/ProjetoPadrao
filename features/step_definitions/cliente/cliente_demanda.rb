Quando(/^selecionar a opcao "([^"]*)" na tabela solicitante$/) do |opcao|
  next if @pass_test == true
  utils = Utils.new
  radio = utils.selecionar_radio_button_tabela(opcao)
  if !radio
    raise("Não encontrou solicitante")
  end
end
