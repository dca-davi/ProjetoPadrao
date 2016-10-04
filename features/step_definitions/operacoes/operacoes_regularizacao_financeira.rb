Quando (/^selecionar "([^"]*)"$/) do |tratamento|
  @trava_rejeicao = Operacoes_regularizacoes_financeiras.new
  selec = @trava_rejeicao.check_box(tratamento)
  if !selec && @tem_direito
    raise 'Usuario nao pode selecionar a opcao na qual tem direito'
  elsif selec && !@tem_direito
    raise 'Usuario pode selecionar a opcao na qual tem direito'
  end
end
