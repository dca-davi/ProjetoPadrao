Dado (/^selecionar o botao: "([^"]*)"$/) do |incluir|
next if @pass_test == true
@configuracoes_antecipacaoVendas = Configuracoes_antecipacaoVendas.new
btnIncluir = @configuracoes_antecipacaoVendas.clicar_botao_incluir(incluir)
if !btnIncluir && @tem_direito
  raise('Usuario com direito nao consegue selecionar o botao')
elsif btnIncluir && !@tem_direito
  raise('Usuario nao tem direito para selecionar o botao')
end
end

Quando (/^clicar no botao: "([^"]*)"$/) do |confirmar|
next if @pass_test == true
@configuracoes_antecipacaoVendas = Configuracoes_antecipacaoVendas.new
btnIncluir = @configuracoes_antecipacaoVendas.clicar_confirmar_custoDeCaptacao(confirmar)
if !btnIncluir && @tem_direito
  raise('Usuario com direito nao consegue selecionar o botao')
elsif btnIncluir && !@tem_direito
  raise('Usuario nao tem direito para selecionar o botao')
end
end

Quando (/^clicar selecionar a opcao "([^"]*)"$/) do |frame|
next if @pass_test == true
@configuracoes_antecipacaoVendas = Configuracoes_antecipacaoVendas.new
btnRadio = @configuracoes_antecipacaoVendas.selecionar_radiobutton(frame)
if !btnRadio && @tem_direito
  raise('Usuario com direito nao consegue selecionar o radio button')
elsif btnRadio && !@tem_direito
  raise('Usuario nao tem direito para selecionar o radio button')
end
end
