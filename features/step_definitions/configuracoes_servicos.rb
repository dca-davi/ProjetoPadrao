Entao(/^Clicar em "([^"]*)" e selecionar a opcao "([^"]*)"$/) do |combo, servico|
  next if @pass_test == true
  @configuracoes_servicos = Utils.new
  btnCombBox = @configuracoes_servicos.selecionar_combo_box(combo, servico)
  if !btnCombBox && @tem_direito
    fail("Usuario com direito nao consegue selecionar o ComboBox")
  elsif btnCombBox && !@tem_direito
    fail("Usuario nao tem direito para selecionar o ComboBox")
  end
end
