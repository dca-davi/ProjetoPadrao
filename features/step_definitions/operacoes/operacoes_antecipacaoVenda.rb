Quando (/^selecionar "([^"]*)" do campo "([^"]*)", "([^"]*)"$/) do |item, frame, valida_step|
    next if @pass_test == true
    @operacaoes_antecipacaoVenda = Operacoes_antecipacaoVendas.new
    btmComboCanal = @operacaoes_antecipacaoVenda.selecione_combo_operacoes(frame, item)
    case frame
        when "demanda", "tipo da solicitacao", "Demanda-Abertura de demanda", "Tipo da solicitação-Abertura de demanda", "data autorizacao reprocessamento de vendas - de", "data autorizacao reprocessamento de vendas - ate", "Status-Reprocessamento de Venda"
            validar = false
        else
            validar = true
    end
    if !btmComboCanal && @tem_direito && validar
        raise 'Usuario nao pode clicar na opcao na qual tem direito'
    elsif btmComboCanal && !@tem_direito
          if valida_step == "1"
              raise 'Usuario pode clicar na opcao na qual nao tem direito'
          end
    end
end

Entao (/^clicar no botao Pesquisar$/) do
    next if @pass_test == true
    @operacaoes_antecipacaoVenda = Operacoes_antecipacaoVendas.new
    btm = @operacaoes_antecipacaoVenda.clicar_botao_esp
    if !btm && @tem_direito
        raise 'Usuario nao pode clicar no botao no qual tem direito'
    elsif btm && !@tem_direito
        raise 'Usuario pode clicar no botao no qual nao tem direito'
    end
end

Entao (/^selecionar a aba precificacao$/) do
    next if @pass_test == true
    @operacaoes_antecipacaoVenda = Operacoes_antecipacaoVendas.new
    abaprecific = @operacaoes_antecipacaoVenda.clicar_aba_precificacao
    if !abaprecific && @tem_direito
        raise 'Usuario nao pode clicar na aba na qual tem direito'
    elsif abaprecific && !@tem_direito
        raise 'Usuario pode clicar na aba na qual nao tem direito'
    end
end

Quando (/^selecionar clicar no link "([^"]*)"$/) do |link|
    next if @pass_test == true
    @operacaoes_antecipacaoVenda = Operacoes_antecipacaoVendas.new
    clklink = @operacaoes_antecipacaoVenda.clicar_no_link(link)
    if !clklink && @tem_direito
        raise 'Usuario nao pode clicar no link no qual tem direito'
    elsif clklink && !@tem_direito
        raise 'Usuario pode clicar no link no qual nao tem direito'
    end
end

Quando (/^confirmar a efetivacao$/) do
    next if @pass_test == true
    @operacaoes_antecipacaoVenda = Operacoes_antecipacaoVendas.new
    clkok = @operacaoes_antecipacaoVenda.clicar_botao_ok
    if !clkok && @tem_direito
        raise 'Usuario nao pode clicar no botao de confirmacao'
    elsif clkok && !@tem_direito
        raise 'Usuario pode clicar no botao de confirmacao no qual nao tem direito'
    end
end

Quando (/^informar "([^"]*)" do campo$/) do |input, _campo|
    next if @pass_test == true
    @operacoes_antecipacaoVenda = Operacoes_antecipacaoVendas.new
    btninp = @operacoes_antecipacaoVenda.selecionar_info_cliente(input)
    if !btninp && @tem_direito
        raise 'Usuario nao pode informar o campo no qual tem direito'
    elsif btninp && !@tem_direito
        raise 'Usuario pode informar o campo no qual nao tem direito'
    end
end

Quando (/^selecionar a opcao "([^"]*)"$/) do |radio|
    next if @pass_test == true
    @operacoes_antecipacaoVenda = Utils.new
    btnradio = @operacoes_antecipacaoVenda.selecionar_radio_button(radio)
    btnradio = @operacoes_antecipacaoVenda.selecionar_radio_button(radio)
    if !btnradio && @tem_direito
        raise 'Usuario nao pode selecionar o campo no qual tem direito'
    end
end
