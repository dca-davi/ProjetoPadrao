# CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRASDECANCELAMENTO_VER
Entao(/^a aplicacao exibira\/nao exibira o painel grid da tela crf "([^"]*)"$/) do |painel|
    crf = Configuracoes_regularizaoesfinanceiras.new
    crfGridResultados = crf.validar_painel_grid(painel)
    if !crfGridResultados && @tem_direito
        raise('Usuario nao pode acessar a opcao na qual tem direito')
    elsif crfGridResultados && !@tem_direito
        raise('usuario sem o direito consegue acessar a opcao')
    end
end

# CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER
Entao(/^a aplicacao exibira\/nao exibira o painel grid da tela crfrl "([^"]*)"$/) do |painel|
    crfr = Configuracoes_regularizaoesfinanceiras.new
    crfrlGridResultados = crfr.validar_painel_grid(painel)
    if !crfrlGridResultados && @tem_direito
        raise('Usuario nao pode acessar a opcao na qual tem direito')
    elsif crfrlGridResultados && !@tem_direito
        raise('usuario sem o direito consegue acessar a opcao')
    end
end
