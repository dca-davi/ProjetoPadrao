Quando (/^selecionar "([^"]*)" do campo "([^"]*)"$/) do |item, frame|
  @operacaoes_antecipacaoVenda = Operacoes_antecipacaoVendas.new
  btmComboCanal = @operacaoes_antecipacaoVenda.selecione_combo_operacoes(frame, item)
  if !btmComboCanal && @tem_direito
    raise 'Usuario nao pode clicar na opcao na qual tem direito'
  elsif btmComboCanal && !@tem_direito
    raise 'Usuario pode clicar na opcao na qual nao tem direito'
  end
end

Entao (/^clicar no botao Pesquisar$/) do
  @operacaoes_antecipacaoVenda = Operacoes_antecipacaoVendas.new
  btm = @operacaoes_antecipacaoVenda.clicar_botao_esp
  if !btm && @tem_direito
    raise 'Usuario nao pode clicar no botao no qual tem direito'
  elsif btm && !@tem_direito
    raise 'Usuario pode clicar no botao no qual nao tem direito'
  end
end
