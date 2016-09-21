# CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_VER
Entao(/^a aplicacao exibira\/nao exibira o painel "([^"]*)"$/) do |painel|
    cavp = Configuracoes_antecipacaoVendas_precificacao.new
    statusCavp = config.validar_painel_grid(painel)
    if !statusCavp && @tem_direito
        raise('Usuario nao pode acessar a opcao na qual tem direito')
    elsif statusCavp && !@tem_direito
        raise('usuario sem o direito consegue acessar a opcao')
    end
end
