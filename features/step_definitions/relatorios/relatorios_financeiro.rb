Quando (/^selecionar a data "([^"]*)" da pagina "([^"]*)"$/) do |data, tela|
    next if @pass_test == true
    @relatorios_financeiro = Relatorios_financeiros.new
    btnData = @relatorios_financeiro.informar_periodo_unico(data, tela)
    if !btnData && @tem_direito
        raise('Usuario com direito nao consegue selecionar a data')
    elsif btnData && !@tem_direito
        raise('Usuario nao tem direito para selecionar a data')
    end
end
