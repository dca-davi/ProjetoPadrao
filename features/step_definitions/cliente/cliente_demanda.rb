Quando(/^selecionar a opcao "([^"]*)" na tabela solicitante$/) do |opcao|
    next if @pass_test == true
    utils = Utils.new
    radio = utils.selecionar_radio_button_tabela(opcao)
    raise("N\u00E3o encontrou solicitante") unless radio
end

Quando(/^Selecionar a opcao da sessao - Solicitante$/) do
    next if @pass_test == true
    @cliente_demanda = Demandas.new
    ckbdemanda = @cliente_demanda.selecionar_opcao_ckb
    if ckbdemanda && !@tem_direito
        raise 'Usuario pode acessar a opcao na qual nao tem direito'
    elsif !ckbdemanda && @tem_direito
        raise 'Usuario nao pode acessar a opcao na qual tem direito'
    end
end
