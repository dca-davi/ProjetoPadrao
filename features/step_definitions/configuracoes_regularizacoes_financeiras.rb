
Entao(/^clicar na acao "([^"]*)"$/) do |acao|
  next if @pass_test == true
  @regularizacao_financeira_utils = Utils.new
  statusBtn = @regularizacao_financeira_utils.clicar_botao_acao(acao)
  if !statusBtn && @tem_direito
    fail("Usuario nao pode clicar no botão no qual tem direito")
  elsif statusBtn && !@tem_direito
    fail("usuario sem o direito consegue clicar no botão")
  end
end
