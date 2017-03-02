Entao(/^o sistema exibira\/nao exibira a tela "([^"]*)", "([^"]*)"$/) do |tela, valida_step|
    next if @pass_test == true
    @trava_prazo = Trava_Prazo_Vencido.new
    status_tela = @trava_prazo.validar_pagina(tela)
    if !status_tela && @tem_direito
        raise('Usuario nao tem acesso a tela ' + tela + ' no qual tem direito')
    elsif status_tela && !@tem_direito
          if valida_step == "1"
              raise('Usuario tem acesso a tela ' + tela + ' no qual nao tem direito')
          end
    end
end

Entao(/^o botao "([^"]*)", "([^"]*)" devera estar habilitado\/desabilitado$/) do |botao, valida_step|
    next if @pass_test == true
    @trava_prazo = Trava_Prazo_Vencido.new
    button_ativo = @trava_prazo.validar_botao(botao)
    if !button_ativo && @tem_direito
        raise('Usuario nao pode clicar no botao no qual tem direito')
    elsif button_ativo && !@tem_direito
          if valida_step == "1"
              raise('Usuario pode clicar no botao que nao tem direito')
          end
    end
end

Quando(/^clicar no botao "([^"]*)", "([^"]*)"$/) do |botao, valida_step|
    next if @pass_test == true
    @trava_prazo_utils = Utils.new
    btnTela = @trava_prazo_utils.clicar_botao_tela(botao)
    if !btnTela && @tem_direito
      raise('Usuario nao pode clicar no botão no qual tem direito')
    elsif btnTela && !@tem_direito
          if valida_step == "1"
              raise('Usuario pode clicar no botão que não tem direito')
          end
    elsif !btnTela && !@tem_direito
        @pass_test = true
    end
end

Quando(/^clicar no botao exportar "([^"]*)"$/) do |valida_step|
    next if @pass_test == true
    @operacoes_trava = Operacoes_Rejeicoes.new
    btnput = @operacoes_trava.clicar_botao_input
    if !btnput && @tem_direito
        raise('Usuario nao pode clicar no botão no qual tem direito')
    elsif btnput && !@tem_direito
        if valida_step == "1"
            raise('Usuario pode clicar no botão que não tem direito')
        end
    end

end
