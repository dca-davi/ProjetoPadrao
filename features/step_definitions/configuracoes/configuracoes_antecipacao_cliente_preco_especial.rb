# CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_VER
Entao(/^a aplicacao exibira\/nao exibira o painel grid da tela cacfv "([^"]*)"$/) do |painel|
    cavp = Configuracoes_antecipacao_cliente_preco_especial.new
    cavpGridResultados = cavp.validar_painel_grid(painel)
    if !cavpGridResultados && @tem_direito
        raise('Usuario nao pode acessar a opcao na qual tem direito')
    elsif cavpGridResultados && !@tem_direito
        raise('usuario sem o direito consegue acessar a opcao')
    end
end

# CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_INCLUIR
Quando(/^clicar no link "([^"]*)"$/) do |incluir|
    cavp = Configuracoes_antecipacao_cliente_preco_especial.new
    cavpLinkIncluir = cavp.clicar_link_acao(incluir)
end
