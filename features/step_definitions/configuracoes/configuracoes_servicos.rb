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
