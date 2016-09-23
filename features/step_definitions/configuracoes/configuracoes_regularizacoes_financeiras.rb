Entao(/^clicar na acao "([^"]*)"$/) do |acao|
    next if @pass_test == true
    @regularizacao_financeira_utils = Utils.new
    statusBtn = @regularizacao_financeira_utils.clicar_botao_acao(acao)
    if !statusBtn && @tem_direito
        raise("Usuario nao pode clicar no bot\u00E3o no qual tem direito")
    elsif statusBtn && !@tem_direito
        raise("usuario sem o direito consegue clicar no bot\u00E3o")
    end
end

Entao(/^localizar o frame "([^"]*)"$/) do |texto|
  next if @pass_test == true
  @regularizacao_financeira_utils = Utils.new
  nomeFrame = @regularizacao_financeira_utils.validar_frame(texto)
  if !nomeFrame && @tem_direito
    fail("Frame não localizado")
  elsif nomeFrame && !@tem_direito
    fail("usuario sem o direito consegue visualizar o frame")
  end

end
