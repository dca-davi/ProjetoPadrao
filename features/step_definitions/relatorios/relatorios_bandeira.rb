Entao(/^selecionar a opcao "([^"]*)" no campo "([^"]*)" da tela Controle de acao de chargeback$/) do |valor, campo|
    next if @pass_test == true
    @relat = Relatorios_bandeiras.new
    btnCombBox = @relat.selecionar_tipo_acao(valor, campo)
    if !btnCombBox && @tem_direito
        raise('Usuario com direito nao consegue selecionar o ComboBox')
    elsif btnCombBox && !@tem_direito
        raise('Usuario nao tem direito para selecionar o ComboBox')
    end
end

E (/^informar o periodo de "([^"]*)" ate "([^"]*)"$/) do |dataInit, dataFim|
    next if @pass_test == true
    utils = Utils.new
    utils.informar_periodo(dataInit, dataFim)
end
