Dado (/^selecionar o botao: "([^"]*)"$/) do |incluir|
    next if @pass_test == true
    @configuracoes_antecipacaoVendas = Configuracoes_antecipacaoVendas.new
    btnIncluir = @configuracoes_antecipacaoVendas.clicar_botao_incluir(incluir)
    if !btnIncluir && @tem_direito
        raise('Usuario com direito nao consegue selecionar o botao')
    elsif btnIncluir && !@tem_direito
        raise('Usuario nao tem direito para selecionar o botao')
    end
end

Quando (/^clicar no botao: "([^"]*)", "([^"]*)"$/) do |confirmar, valida_step|
    next if @pass_test == true
    @configuracoes_antecipacaoVendas = Configuracoes_antecipacaoVendas.new
    btnIncluir = @configuracoes_antecipacaoVendas.clicar_confirmar_custoDeCaptacao(confirmar)
    if !btnIncluir && @tem_direito
        raise('Usuario com direito nao consegue selecionar o botao')
    elsif btnIncluir && !@tem_direito
          if valida_step == "1"
              raise('Usuario nao tem direito para selecionar o botao')
          end
    end
end

Quando (/^clicar selecionar a opcao "([^"]*)", "([^"]*)"$/) do |frame, valida_step|
    next if @pass_test == true
    @configuracoes_antecipacaoVendas = Configuracoes_antecipacaoVendas.new
    btnRadio = @configuracoes_antecipacaoVendas.selecionar_radiobutton(frame)
    if !btnRadio && @tem_direito
        raise('Usuario com direito nao consegue selecionar o radio button')
    elsif btnRadio && !@tem_direito
          if valida_step == "1"
              raise('Usuario nao tem direito para selecionar o radio button')
          end
    end
end

Quando (/^clicar na opcao incluir em cartao nao presente$/) do
    next if @pass_test == true
    @configuracoes_antecipacaoVendas = Configuracoes_antecipacaoVendas.new
    btnIncluir = @configuracoes_antecipacaoVendas.incluir_cartao_nao_presente
    if !btnIncluir && @tem_direito
        raise('Usuario com direito nao consegue selecionar a aba incluir')
    elsif btnIncluir && !@tem_direito
        raise('Usuario nao tem direito para selecionar a aba incluir')
    end
end

Quando (/^clicar no botao "([^"]*)" da tela excecao - cartao nao presente - incluir$/) do |botao|
    next if @pass_test == true
    @configuracoes_antecipacaoVendas = Configuracoes_antecipacaoVendas.new
    btnIncluirOk = @configuracoes_antecipacaoVendas.botao_incluir_cartao_nao_presente(botao)
    if !btnIncluirOk && @tem_direito
        raise('Usuario com direito nao consegue selecionar o botao')
    elsif btnIncluirOk && !@tem_direito
        raise('Usuario nao tem direito para selecionar o botao')
    end
end

Entao (/^selecionar o numero do clinte$/) do
    next if @pass_test == true
    @configuracoes_antecipacaoVendas = Configuracoes_antecipacaoVendas.new
    btntick = @configuracoes_antecipacaoVendas.adicionar_novos_clientes
    if !btntick && @tem_direito
        raise('Usuario com direito nao consegue selecionar o item')
    elsif btntick && !@tem_direito
        raise('Usuario nao tem direito para selecionar o item')
    end
end
