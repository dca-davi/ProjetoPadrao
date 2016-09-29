Entao(/^clicar na acao "([^"]*)"$/) do |acao|
    next if @pass_test == true
    @regularizacao_financeira_utils = Utils.new
    statusBtn = @regularizacao_financeira_utils.clicar_botao_acao(acao)
    if !statusBtn && @tem_direito
        raise("Usuario nao pode clicar no bot\u00E3o no qual tem direito")
    elsif statusBtn && !@tem_direito
        raise("usuario sem o direito consegue clicar no bot\u00E3o")
    end
end

Entao(/^localizar o frame "([^"]*)"$/) do |texto|
    next if @pass_test == true
    @regularizacao_financeira_utils = Utils.new
    nomeFrame = @regularizacao_financeira_utils.validar_frame(texto)
    if !nomeFrame && @tem_direito
        raise("Frame n\u00E3o localizado")
    elsif nomeFrame && !@tem_direito
        raise('usuario sem o direito consegue visualizar o frame')
    end
end

Entao(/^sera\/nao sera possivel editar todos os campos do tipo de pagamento$/) do
    next if @pass_test == true
    utils = Utils.new
    btnUm = utils.validar_botao('Editar', 0, false)
    btnDois = utils.validar_botao('Editar', 1, false)
    btnTres = utils.validar_botao('Editar', 2, false)
    if (!btnUm || !btnDois || !btnTres) && @tem_direito
        raise("Usuario nao pode clicar no bot\u00E3o no qual tem direito")
    elsif (btnUm || btnDois || btnTres) && !@tem_direito
        raise("usuario sem o direito consegue clicar no bot\u00E3o")
    end
end
