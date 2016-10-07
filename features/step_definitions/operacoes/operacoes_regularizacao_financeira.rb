Quando (/^selecionar "([^"]*)"$/) do |tratamento|
  @operacoes_regularizacao_financeira = Operacoes_regularizacoes_financeiras.new
  selec = @operacoes_regularizacao_financeira.check_box(tratamento)
  if !selec && @tem_direito
    raise 'Usuario nao pode selecionar a opcao na qual tem direito'
  elsif selec && !@tem_direito
    raise 'Usuario pode selecionar a opcao na qual nao tem direito'
  end
end

Quando (/^clicar no botao "([^"]*)" da tela de tratamento$/) do |botao|
  @operacoes_regularizacao_financeira = Operacoes_regularizacoes_financeiras.new
  conf = @operacoes_regularizacao_financeira.clicar_botao_confirmar_tratamento(botao)
  if !conf && @tem_direito
    raise 'Usuario nao pode clicar no botao no qual tem direito'
  elsif conf && !@tem_direito
    raise 'Usuario pode clicar no botao no qual nao tem direito'
  end
end
