Entao(/^clicar na acao "([^"]*)", "([^"]*)"$/) do |acao, valida_step|
    next if @pass_test == true
    @regularizacao_financeira_utils = Utils.new
    statusBtn = @regularizacao_financeira_utils.clicar_botao_acao(acao)
    if !statusBtn && @tem_direito
        raise("Usuario nao pode clicar no bot\u00E3o no qual tem direito")
    elsif statusBtn && !@tem_direito
        if valida_step == "1"
            raise("usuario sem o direito consegue clicar no bot\u00E3o")
        end
    end
end

Entao(/^localizar o frame "([^"]*)", "([^"]*)"$/) do |texto, valida_step|
    next if @pass_test == true
    @regularizacao_financeira_utils = Utils.new
    nomeFrame = @regularizacao_financeira_utils.validar_frame(texto)
    if !nomeFrame && @tem_direito
        raise("Frame n\u00E3o localizado")
    elsif nomeFrame && !@tem_direito
        if valida_step == "1"
            raise('usuario sem o direito consegue visualizar o frame')
        end
    end
end

Entao(/^localizar o frame "([^"]*)"$/) do | texto |
    steps %Q{ Entao localizar o frame "#{texto}, "1" }
end

Entao(/^sera\/nao sera possivel editar todos os campos do tipo de pagamento$/) do
    next if @pass_test == true
    utils = Utils.new
    #btnUm = utils.validar_botao('Editar', 0, false)
    #btnDois = utils.validar_botao('Editar', 1, false)
    #btnTres = utils.validar_botao('Editar', 2, false)
    optUm = utils.selecionar_radio_button('Sim')
    txtUm = utils.preencher_campo_input('36', 'quantidade de parcelas - tipo de pagamento')

    if (!optUm || !txtUm) && @tem_direito
        raise("Usuario nao pode clicar no bot\u00E3o no qual tem direito")
    elsif (optUm || txtUm) && !@tem_direito
        raise("usuario sem o direito consegue clicar no bot\u00E3o")
    end
end

# CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRASDECANCELAMENTO_VER
Entao(/^a aplicacao exibira\/nao exibira o painel grid da tela crf "([^"]*)"$/) do |painel|
    next if @pass_test == true
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
    next if @pass_test == true
    crfr = Configuracoes_regularizaoesfinanceiras.new
    crfrlGridResultados = crfr.validar_painel_grid(painel)
    if !crfrlGridResultados && @tem_direito
        raise('Usuario nao pode acessar a opcao na qual tem direito')
    elsif crfrlGridResultados && !@tem_direito
        raise('usuario sem o direito consegue acessar a opcao')
    end
end

Entao(/^localizar e clicar no botao "([^"]*)"$/) do |btn|
    next if @pass_test == true
    @configuracoes_regularizacoes_financeiras = Configuracoes_regularizaoesfinanceiras.new
    btnindex = @configuracoes_regularizacoes_financeiras.btn_pesquisar_index1(btn)
    if !btnindex && @tem_direito
        raise("Usuario com direito nao consegue clicar no botao")
    elsif btnindex && !@tem_direito
        raise('usuario sem o direito consegue clicar no botao')
    end
end