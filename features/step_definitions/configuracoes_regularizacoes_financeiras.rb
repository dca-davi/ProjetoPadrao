
Entao(/^clicar no botão de visualização "([^"]*)"$/) do |lupa|
  next if @pass_test == true
  @regularizacao_financeira_utils = Utils.new
  @regularizacao_financeira_utils.clicar_lupa (lupa)
end

Entao(/^clicar no botão de edição "([^"]*)"$/) do |editar|
  next if @pass_test == true
  @regularizacao_financeira_utils = Utils.new
  @regularizacao_financeira_utils.clicar_editar (editar)
end
