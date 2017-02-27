Quando(/^selecionar um valor na tabela de Informacoes financeiras$/) do
    next if @pass_test == true
    info_cli = Info_do_cliente.new
    info_cli.click_primeiro_valorDia
end

Quando (/^selecionar o item "([^"]*)" de "([^"]*)"$/) do |item, dia|
    next if @pass_test == true
    @informacoes_do_cliente = Info_do_cliente.new
    infocli = @informacoes_do_cliente.click_valor_movimentacao(item, dia)
    if !infocli && @tem_direito
        raise('Usuario com direito nao consegue selecionar o valor')
    elsif infocli && !@tem_direito
        raise('Usuario nao tem direito para selecionar o valor')
   end
end

Quando (/^clicar no item em consolidado de vendas$/) do
    next if @pass_test == true
    @cliente_resumo_financeiro = Cliente_Resumo_financeiro.new
    clkconso = @cliente_resumo_financeiro.clicar_consolidado_vendas
    if !clkconso && @tem_direito
        raise('Usuario com direito nao consegue clicar no item Consolidado de vendas')
    elsif clkconso && !@tem_direito
        raise('Usuario nao tem direito clicar no item Consolidado de vendas')
   end
end

Quando (/^Expandir o campo da transação de venda$/) do
    next if @pass_test == true
    @cliente_resumo_financeiro = Cliente_Resumo_financeiro.new
    clkexpandir = @cliente_resumo_financeiro.expandir_primeiro_item
    if !clkexpandir && @tem_direito
        raise('Usuario com direito nao consegue clicar no item detalhado de vendas')
    elsif clkexpandir && !@tem_direito
        raise('Usuario nao tem direito clicar no item detalhado de vendas')
   end
end

Quando (/^Validar o frame "([^"]*)"$/) do |texto|
    next if @pass_test == true
    @cliente_resumo_financeiro = Informacoes_financeiras.new
    vldfram = @cliente_resumo_financeiro.validar_frame_resumo_financeiro(texto)
    raise('Frame nao localizado') unless vldfram
end

E(/^clicar no item da transacao de vendas$/) do
    next if @pass_test == true
    @cliente_resumo_financeiro = Cliente_Resumo_financeiro.new
    clkconso = @cliente_resumo_financeiro.clicar_detalhado_vendas
    if !clkconso && @tem_direito
        raise('Usuario com direito nao consegue clicar no item Transação de vendas')
    elsif clkconso && !@tem_direito
        raise('Usuario nao tem direito clicar no item Transação de vendas')
   end
end
