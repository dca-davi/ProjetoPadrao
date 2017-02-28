Quando(/^informar os filtros na tela "([^"]*)" e clicar no botao "([^"]*)"$/) do |tela, botao|
    next if @pass_test == true
    filtros = Trava_Prazo_Vencido.new
    filtros.preencher_filtros tela
    utils = Utils.new
    utils.clicar_botao_tela botao
end

Quando(/^o botao "([^"]*)", "([^"]*)" estara habilitado\/desabilitado$/) do |botao, valida_step|
    next if @pass_test == true
    @operacoes_rejeicoes = Utils.new
    btnExprt = @operacoes_rejeicoes.validar_btn_exportar(botao)
    if btnExprt && !@tem_direito
          if valida_step == "1"
              raise 'Usuario pode acessar a opcao na qual nao tem direito'
          end
    elsif !btnExprt && @tem_direito
        raise 'Usuario nao pode acessar a opcao na qual nao tem direito'
    end
end

Quando (/^selecionar a opcao "([^"]*)" do campo "([^"]*)"$/) do |item, frame|
    next if @pass_test == true
    @trava_rejeicao = Operacoes_Rejeicoes.new
    btmCombo = @trava_rejeicao.selecione_combo(frame, item)
    if !btmCombo && @tem_direito
        raise 'Usuario nao pode clicar na opcao na qual tem direito'
    elsif btmCombo && !@tem_direito
        raise 'Usuario pode clicar na opcao na qual nao tem direito'
    end
end

Quando (/^clicar no botao "([^"]*)", "([^"]*)" da tela captura$/) do |botao, valida_step|
    @Operacoes_Rejeicoes = Operacoes_Rejeicoes.new
    btnPesquisar = @Operacoes_Rejeicoes.clicar_botao_pequisar_captura_tratamento(botao)
    if !btnPesquisar && @tem_direito
        raise 'Usuario nao pode clicar no botao no qual tem direito'
    elsif btnPesquisar && !@tem_direito
          if valida_step == "1"
              raise 'Usuario pode clicar no botao no qual nao tem direito'
          end
    end
end

Dado(/^selecionar "([^"]*)" no combo\-box Bandeira$/) do |valor|
    next if @pass_test == true
    @operacoes_rejeicoes = Operacoes_Rejeicoes.new
    comboBox = @operacoes_rejeicoes.selecionar_combobox_depositos_debitos(valor)
    if !comboBox && @tem_direito
        raise 'Usuario nao pode clicar no botao no qual tem direito'
    elsif comboBox && !@tem_direito
        raise 'Usuario pode clicar no botao no qual nao tem direito'
    end
end

Entao(/^selecionar "([^"]*)" no combo\-box do pop\-up$/) do |valor|
    next if @pass_test == true
    @operacoes_rejeicoes = Operacoes_Rejeicoes.new
    comboBox = @operacoes_rejeicoes.selecionar_combobox_depositos_debitos_pop_up(valor)
    if !comboBox && @tem_direito
        raise 'Usuario nao pode clicar no botao no qual tem direito'
    elsif comboBox && !@tem_direito
        raise 'Usuario pode clicar no botao no qual nao tem direito'
    end
end

Entao(/^selecionar a opcao "([^"]*)" da aba Anulacao$/) do |valor|
    next if @pass_test == true
    @operacoes_rejeicoes = Utils.new
    radioButton = @operacoes_rejeicoes.selecionar_radio_button(valor, 1)
    if !radioButton && @tem_direito
        raise 'Usuario nao pode clicar no botao no qual tem direito'
    elsif radioButton && !@tem_direito
        raise 'Usuario pode clicar no botao no qual nao tem direito'
    end
end

Quando(/^selecionar "([^"]*)" no combo\-box "([^"]*)"$/) do |valor, item|
    next if @pass_test == true
    @operacoes_rejeicoes = Operacoes_Rejeicoes.new
    comboBox = @operacoes_rejeicoes.selecionar_combobox(valor, item)
    if !comboBox && @tem_direito
        raise 'Usuario nao pode clicar no botao no qual tem direito'
    elsif comboBox && !@tem_direito
        raise 'Usuario pode clicar no botao no qual nao tem direito'
    end
end

Quando(/^informar "([^"]*)" no campo data inicial de rejeicao$/) do |data|
    next if @pass_test == true
    @operacoes_rejeicoes = Operacoes_Rejeicoes.new
    inputDate = @operacoes_rejeicoes.preencher_campo_data_inicial(data)
    if !inputDate && @tem_direito
        raise 'Usuario nao pode clicar no botao no qual tem direito'
    elsif inputDate && !@tem_direito
        raise 'Usuario pode clicar no botao no qual nao tem direito'
    end
end

Quando(/^informar "([^"]*)" no campo data final de rejeicao$/) do |data|
    next if @pass_test == true
    @operacoes_rejeicoes = Operacoes_Rejeicoes.new
    inputDate = @operacoes_rejeicoes.preencher_campo_data_final(data)
    if !inputDate && @tem_direito
        raise 'Usuario nao pode clicar no botao no qual tem direito'
    elsif inputDate && !@tem_direito
        raise 'Usuario pode clicar no botao no qual nao tem direito'
    end
end

Quando(/^selecionar a opcao "([^"]*)" do combo\-box "([^"]*)"$/) do |opcao, combo|
    next if @pass_test == true
    @operacoes_rejeicoes = Operacoes_Rejeicoes.new
    comboBox = @operacoes_rejeicoes.selecione_combo_box(combo, opcao)
    if !comboBox && @tem_direito
        raise 'Usuario nao pode clicar no botao no qual tem direito'
    elsif comboBox && !@tem_direito
        raise 'Usuario pode clicar no botao no qual nao tem direito'
    end
end
