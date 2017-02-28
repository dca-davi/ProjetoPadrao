E(/^clicar no botao "([^"]*)" do frame "([^"]*)"$/) do |botao, frame|
    next if @pass_test == true
    @info_cli = Info_do_cliente.new
    @btn_ativo = @info_cli.clicar_botao_frame(botao, frame)
    if !@btn_ativo && !@tem_direito
        @pass_test = true
        next
    end
end

Quando(/^o campo Status do cadastro estiver como "([^"]*)"$/) do |valor|
    next if @pass_test == true
    @info_cli.alterar_status_cadastro(valor)
end

Entao(/^o campo contem\/nao contem a opcao "([^"]*)"$/) do |opcao|
    next if @pass_test == true
    motivoFecha = @info_cli.verificar_valor_lista_motivoDoFechamento(opcao)
    if !motivoFecha && @tem_direito
        raise('Usuario nao pode acessar a opcao na qual tem direito')
    elsif motivoFecha && !@tem_direito
        raise('usuario sem o direito consegue acessar a opcao')
    end
end

Entao(/^o campo Status do cadastro deve\/nao deve estar habilitado$/) do
    next if @pass_test == true
    statusCad = @info_cli.verificar_status_cadastro
    if !statusCad && @tem_direito
        raise('Usuario nao pode editar o campo no qual tem direito')
    elsif statusCad && !@tem_direito
        raise('Usuario pode editar o campo no qual nao tem direito')
    end
end

Entao(/^o campo Bloqueio deve\/nao deve estar habilitado$/) do
    next if @pass_test == true
    statusBloc = @info_cli.verificar_status_bloqueio
    if !statusBloc && @tem_direito
        raise('Usuario nao pode editar o campo no qual tem direito')
    elsif statusBloc && !@tem_direito
        raise('Usuario pode editar o campo no qual nao tem direito')
    end
end

Entao(/^o botao de acao "([^"]*)" do frame "([^"]*)" devera estar habilitado\/desabilitado$/) do |acao, _frame|
    next if @pass_test == true
    @info_clie = Info_do_cliente.new
    statusBtn = @info_clie.action_dadosProp(acao)
    if !statusBtn && @tem_direito
        raise('Usuario nao pode editar o campo no qual tem direito')
    elsif statusBtn && !@tem_direito
        raise('Usuario pode editar o campo no qual nao tem direito')
    end
end

Entao(/^o campo "([^"]*)" deve\/nao deve estar habilitado$/) do |campo|
    next if @pass_test == true
    info_cli = Info_do_cliente.new
    utils = Utils.new
    case campo.downcase
    when "raz\u00E3o social"
        statusCampo = info_cli.verificar_campo_razaoSocial
    when 'site'
        statusCampo = info_cli.verificar_campo_site
    when 'logradouro'
        utils.aguardar_loading

        Watir::Wait.until { $browser.input(id: 'tab_tabGeral:frmAddress:nmStreet').present? }
        sleep 5
        statusCampo = if $browser.input(id: 'tab_tabGeral:frmAddress:nmStreet').attribute_value('aria-disabled') == 'true'
                          false
                      else
                          true
                      end
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    if !statusCampo && @tem_direito
        raise('Usuario nao pode editar o campo no qual tem direito')
    elsif statusCampo && !@tem_direito
        raise('Usuario pode editar o campo no qual nao tem direito')
    end
end

Entao(/^o botao "([^"]*)" do frame "([^"]*)", "([^"]*)" estara habilitado\/desabilitado$/) do |botao, frame, valida_step|
    next if @pass_test == true
    info_cli = Info_do_cliente.new
    statusBtn = info_cli.clicar_botao_frame(botao, frame)
    if !statusBtn && @tem_direito
        raise('Usuario nao pode clicar no botao no qual tem direito')
    elsif statusBtn && !@tem_direito
        if valida_step == "1"
            raise('Usuario pode clicar no botao no qual nao tem direito')
        end
    end
end

Quando(/^clicar na aba "([^"]*)", "([^"]*)"$/) do |aba, valida_step|
    next if @pass_test == true
    utils = Utils.new
    statusAba = utils.acessar_aba(aba)

    # puts "Acesso a aba: #{statusAba} + Tem direito? #{@tem_direito}"
    if !statusAba && @tem_direito
        raise('Usuario nao pode acessar aba no qual tem direito')
    # elsif statusAba && !@tem_direito
    #     raise('Usuario pode acessar aba no qual não tem direito')
    elsif statusAba && !@tem_direito
        if valida_step == "1"
            raise('Usuario pode acessar aba no qual não tem direito')
        end
    elsif !statusAba && !@tem_direito
        @pass_test = true
    end
end

Entao(/^o botao "([^"]*)" dados de contato esta habilitado\/desabilitado$/) do |botao|
    next if @pass_test == true
    info_cli = Info_do_cliente.new
    statusBtn = info_cli.action_dadosContato(botao)
    if !statusBtn && @tem_direito
        raise('Usuario nao pode clicar no botao no qual tem direito')
    elsif statusBtn && !@tem_direito
        raise('Usuario pode clicar no botao no qual nao tem direito')
    end
end

Entao(/^podera\/nao podera acessar a Tela de pesquisa$/) do
    next if @pass_test == true
    info_cli = Info_do_cliente.new
    statusPag = info_cli.validar_Tela_pesquisa

    if !statusPag && @tem_direito
        raise("Usu\u00E1rio n\u00E3o pode acessar a pagina na qual tem direito")
    elsif statusPag && !@tem_direito
        raise("Usu\u00E1rio n\u00E3o pode acessar a pagina na qual tem direito")
    end
end

Entao(/^o link "([^"]*)" deve estar habilitado\/desabilitado$/) do |link|
    next if @pass_test == true
    utils = Utils.new
    statusAba = utils.acessar_aba(link)
    if !statusAba && @tem_direito
        raise('Usuario nao pode acessar aba no qual tem direito')
    end
end

Entao(/^podera\/nao podera acessar a aba "([^"]*)"$/) do |aba|
    next if @pass_test == true
    utils = Utils.new
    statusAba = utils.validar_acesso_aba(aba)
    if !statusAba && @tem_direito
        raise("Usuário não pode acessar a aba #{aba} na qual tem direito")
    end
end

E(/^selecionar um item "([^"]*)"$/) do |item|
    next if @pass_test == true
    info_cli = Info_do_cliente.new
    info_cli.selecionar_bandeira_filtro(item)
    info_cli.selecionar_primeiro_item_busca
end

Entao(/^o campo Codigo Amex devera estar habilitado\/desabilitado$/) do
    next if @pass_test == true
    statusCampo = @info_cli.verificar_campo_codigoAmex
    if !statusCampo && @tem_direito
        raise('Usuario nao pode editar o campo no qual tem direito')
    elsif statusCampo && !@tem_direito
        raise('Usuario pode editar o campo no qual nao tem direito')
    end
end

Entao(/^poderei\/nao poderei editar o item com motivo "([^"]*)"$/) do |motivo|
    next if @pass_test == true
    info_cli = Info_do_cliente.new
    statusCampo = info_cli.verificar_edicao_bloqueio(motivo)
    if !statusCampo && @tem_direito
        raise('Usuario nao pode editar o item no qual tem direito')
    elsif statusCampo && !@tem_direito
        raise('Usuario pode editar o item no qual nao tem direito')
    end
end

Entao(/^o campo conta esta\/nao esta truncado$/) do
    next if @pass_test == true
    info_cli = Info_do_cliente.new
    statusCampo = info_cli.conta_truncada?
    if statusCampo && @tem_direito
        raise('Usuario nao pode ver o item no qual tem direito')
    elsif !statusCampo && !@tem_direito
        raise('Usuario pode ver o item no qual nao tem direito')
    end
end

Entao(/^se o EC nao tiver um plano o botao "([^"]*)" do frame "([^"]*)" estara habilitado\/desabilitado$/) do |botao,frame|
    next if @pass_test == true
    info_cli = Info_do_cliente.new
    if $browser.span(text: frame).parent.parent.td(text: /dados para serem exibidos$/).present?
        statusbtn = info_cli.clicar_botao_frame(botao, frame)
        if !statusbtn && @tem_direito
        raise('Usuario nao pode clicar no botao que tem direito')
        elsif statusbtn && !@tem_direito
            raise('Usuario pode clicar no botao que nao tem direito')
        end
    else
        raise('O EC já tem um plano ativo')
    end
end

Entao(/^se o EC tiver um plano o botão "([^"]*)" do frame "([^"]*)" estara habilitado\/desabilitado$/) do |botao, frame|
  next if @pass_test == true
  utils = Utils.new
  utils.aguardar_loading
  if !$browser.span(text: frame).parent.parent.td(text: /dados para serem exibidos$/).exist?
        statusbtn = utils.clicar_botao_acao(botao)
        if !statusbtn && @tem_direito
        raise('Usuario nao pode clicar no botao que tem direito')
        elsif statusbtn && !@tem_direito
            raise('Usuario pode clicar no botao que nao tem direito')
        end
    else
        raise('O EC não tem um plano ativo')
    end
end
