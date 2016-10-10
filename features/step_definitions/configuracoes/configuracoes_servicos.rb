Entao(/^selecionar a opcao "([^"]*)" no campo "([^"]*)"$/) do |valor, campo|
    next if @pass_test == true
    @configuracoes_servicos = Configuracoes_servico.new
    btnCombBox = @configuracoes_servicos.selecionar_valores(valor, campo)
    if !btnCombBox && @tem_direito
        raise('Usuario com direito nao consegue selecionar o ComboBox')
    elsif btnCombBox && !@tem_direito
        raise('Usuario nao tem direito para selecionar o ComboBox')
    end
end

Quando(/^selecionar o Indice "([^"]*)"$/) do |valor|
    next if @pass_test == true
    config = Configuracoes.new
    config.selecionar_indice(valor)
end

Entao(/^selecionar o item "([^"]*)"$/) do |valor|
    next if @pass_test == true
    @configuracoes_servicos = Utils.new
    statitem = @configuracoes_servicos.selecionar_valor_combobox_label(valor)
    if !statitem && @tem_direito
        raise("Usuario nao pode selecionar a opcao na qual tem direito")
    elsif statitem && !@tem_direito
        raise("usuario sem o direito consegue selecionar a opcao")
    end
end
