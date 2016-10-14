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

Quando (/^selecionar a opcao "([^"]*)" da tela resumo contabil sintetico$/) do |tipo|
    next if @pass_test == true
    @relatorios_financeiro = Relatorios_financeiros.new
    btnData = @relatorios_financeiro.selecionar_tabela_resumo_contabil_sintetico(tipo)
    if !btnData && @tem_direito
        raise('Usuario com direito nao consegue selecionar a opcao')
    elsif btnData && !@tem_direito
        raise('Usuario nao tem direito para selecionar a opcao')
    end
end

Quando (/^clicar no botao "([^"]*)" da tela captura de vendas$/) do |botao|
    next if @pass_test == true
    @relatorios_financeiro = Relatorios_financeiros.new
    validbtn = @relatorios_financeiro.validar_botao_exportar(botao)
    if !validbtn && @tem_direito
        raise('Usuario com direito nao consegue clicar no botao')
    elsif validbtn && !@tem_direito
        raise('Usuario nao tem direito para clicar no botao')
    end
end

Quando (/^clicar no valor bruto$/) do
    next if @pass_test == true
    @relatorios_financeiro = Relatorios_financeiros.new
    valorbtn = @relatorios_financeiro.clicar_valor_bruto
    if !valorbtn && @tem_direito
        raise('Usuario com direito nao consegue clicar no valor')
    elsif valorbtn && !@tem_direito
        raise('Usuario nao tem direito para clicar no valor')
    end
end
