Entao(/^o sistema exibira\/nao exibira a tela "([^"]*)"$/) do |tela|
    next if @pass_test == true
    @trava_prazo = Trava_Prazo_Vencido.new
    status = @trava_prazo.validar_pagina(tela)
    raise("A tela não é #{tela}") if status == false
end

Entao(/^o botao "([^"]*)" devera estar habilitado\/desabilitado$/) do |botao|
    next if @pass_test == true
    @trava_prazo = Trava_Prazo_Vencido.new
    button_ativo = @trava_prazo.validar_botao(botao)
    if !button_ativo && @tem_direito
        raise('Usuario nao pode clicar no botao no qual tem direito')
    elsif button_ativo && !@tem_direito
        raise('Usuario pode clicar no botao que nao tem direito')
    end
end

Quando(/^clicar no botao "([^"]*)"$/) do |botao|
    next if @pass_test == true
    @trava_prazo_utils = Utils.new
    btnTela = @trava_prazo_utils.clicar_botao_tela(botao)
    if !btnTela && @tem_direito
      fail('Usuario nao pode clicar no botão no qual tem direito')
    elsif btnTela && !@tem_direito
      fail('Usuario pode clicar no botão que não tem direito')
    end

end


Quando(/^clicar no botao exportar$/) do
    next if @pass_test == true
    @operacoes_trava = Operacoes_Rejeicoes.new
    btnput = @operacoes_trava.clicar_botao_input
    if !btnput && @tem_direito
      fail('Usuario nao pode clicar no botão no qual tem direito')
    elsif btnput && !@tem_direito
      fail('Usuario pode clicar no botão que não tem direito')
    end

end
