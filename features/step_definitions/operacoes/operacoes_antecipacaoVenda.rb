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

Entao (/^selecionar a aba precificacao$/) do
  @operacaoes_antecipacaoVenda = Operacoes_antecipacaoVendas.new
  abaprecific = @operacaoes_antecipacaoVenda.clicar_aba_precificacao
  if !abaprecific && @tem_direito
    raise 'Usuario nao pode clicar na aba na qual tem direito'
  elsif abaprecific && !@tem_direito
    raise 'Usuario pode clicar na aba na qual nao tem direito'
  end
end

Quando (/^selecionar clicar no link "([^"]*)"$/) do |link|
  @operacaoes_antecipacaoVenda = Operacoes_antecipacaoVendas.new
  clklink = @operacaoes_antecipacaoVenda.clicar_no_link(link)
  if !clklink && @tem_direito
    raise 'Usuario nao pode clicar no link no qual tem direito'
  elsif clklink && !@tem_direito
    raise 'Usuario pode clicar no link no qual nao tem direito'
  end
end

Quando (/^confirmar a efetivacao$/) do
  @operacaoes_antecipacaoVenda = Operacoes_antecipacaoVendas.new
  clkok = @operacaoes_antecipacaoVenda.clicar_botao_ok
  if !clkok && @tem_direito
    raise 'Usuario nao pode clicar no botao de confirmacao'
  elsif clkok && !@tem_direito
    raise 'Usuario pode clicar no botao de confirmacao no qual nao tem direito'
  end
end
