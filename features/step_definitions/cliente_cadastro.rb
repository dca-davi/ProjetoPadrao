E(/^clicar no botao "([^"]*)" do frame "([^"]*)"$/) do |botao, frame|
  next if @pass_test == true
  @info_cli = Info_do_cliente.new
  @btn_ativo =  @info_cli.clicar_botao_frame(botao, frame)
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
    fail("Usuario nao pode acessar a opcao na qual tem direito")
  elsif motivoFecha && !@tem_direito
    fail("usuario sem o direito consegue acessar a opcao")
  end

end

Entao(/^o campo Status do cadastro deve\/nao deve estar habilitado$/) do
  next if @pass_test == true
  statusCad = @info_cli.verificar_status_cadastro()
  if !statusCad && @tem_direito
    fail("Usuario nao pode editar o campo no qual tem direito")
  elsif statusCad && !@tem_direito
    fail("Usuario pode editar o campo no qual nao tem direito")
  end
end

Entao(/^o campo Bloqueio deve\/nao deve estar habilitado$/) do
  next if @pass_test == true
  statusBloc = @info_cli.verificar_status_bloqueio()
  if !statusBloc && @tem_direito
    fail("Usuario nao pode editar o campo no qual tem direito")
  elsif statusBloc && !@tem_direito
    fail("Usuario pode editar o campo no qual nao tem direito")
  end
end

Entao(/^o botao de acao "([^"]*)" do frame "([^"]*)" devera estar habilitado\/desabilitado$/) do |acao, frame|
next if @pass_test == true
@info_clie = Info_do_cliente.new
statusBtn = @info_clie.action_dadosProp(acao)
  if !statusBtn && @tem_direito
    fail("Usuario nao pode editar o campo no qual tem direito")
  elsif statusBtn && !@tem_direito
    fail("Usuario pode editar o campo no qual nao tem direito")
  end
end

Entao(/^o campo "([^"]*)" deve\/nao deve estar habilitado$/) do |campo|
  next if @pass_test == true
  info_cli = Info_do_cliente.new

  case campo.downcase
    when "razão social"
      statusCampo = info_cli.verificar_campo_razaoSocial()
    when "site"
      statusCampo = info_cli.verificar_campo_site()
  end

  if !statusCampo && @tem_direito
    fail("Usuario nao pode editar o campo no qual tem direito")
  elsif statusCampo && !@tem_direito
    fail("Usuario pode editar o campo no qual nao tem direito")
  end
end

Entao(/^o botao "([^"]*)" do frame "([^"]*)" estara habilitado\/desabilitado$/) do |botao, frame|
  next if @pass_test == true
  info_cli = Info_do_cliente.new
  statusBtn = info_cli.clicar_botao_frame(botao,frame)
  if !statusBtn && @tem_direito
    fail("Usuario nao pode clicar no botao no qual tem direito")
  elsif statusBtn && !@tem_direito
    fail("Usuario pode clicar no botao no qual nao tem direito")
  end
end

Quando(/^clicar na aba "([^"]*)"$/) do |aba|
  next if @pass_test == true
  utils = Utils.new
  statusAba = utils.acessar_aba(aba)
  if !statusAba && @tem_direito
    fail("Usuario nao pode acessar aba no qual tem direito")
  elsif !statusAba && !@tem_direito
    @pass_test = true
  end
end

Entao(/^o botao "([^"]*)" dados de contato esta habilitado\/desabilitado$/) do |botao|
  next if @pass_test == true
  info_cli = Info_do_cliente.new
  statusBtn = info_cli.action_dadosContato(botao)
  if !statusBtn && @tem_direito
    fail("Usuario nao pode clicar no botao no qual tem direito")
  elsif statusBtn && !@tem_direito
    fail("Usuario pode clicar no botao no qual nao tem direito")
  end
end

Entao(/^podera\/nao podera acessar a Tela de pesquisa$/) do
  next if @pass_test == true
  info_cli = Info_do_cliente.new
  statusPag = info_cli.validar_Tela_pesquisa

  if !statusPag && @tem_direito
    fail("Usuário não pode acessar a pagina na qual tem direito")
  elsif statusPag && !@tem_direito
    fail("Usuário não pode acessar a pagina na qual tem direito")
  end
end

Entao(/^o link "([^"]*)" deve estar habilitado\/desabilitado$/) do |link|
  next if @pass_test == true
  utils = Utils.new
  statusAba = utils.acessar_aba(link)
  if !statusAba && @tem_direito
    fail("Usuario nao pode acessar aba no qual tem direito")
  end
end

Entao(/^podera\/nao podera acessar a aba "([^"]*)"$/) do |aba|
  next if @pass_test == true
  utils = Utils.new
  statusAba = utils.validar_acesso_aba(aba)
  if !statusAba && @tem_direito
    fail("Usuário não pode acessar a aba #{aba} na qual tem direito")
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
  statusCampo = @info_cli.verificar_campo_codigoAmex()
  if !statusCampo && @tem_direito
    fail("Usuario nao pode editar o campo no qual tem direito")
  elsif statusCampo && !@tem_direito
    fail("Usuario pode editar o campo no qual nao tem direito")
  end
end

Entao(/^poderei\/nao poderei editar o item com motivo "([^"]*)"$/) do |motivo|
  next if @pass_test == true
  info_cli = Info_do_cliente.new
  statusCampo = info_cli.verificar_edicao_bloqueio(motivo)
  if !statusCampo && @tem_direito
    fail("Usuario nao pode editar o item no qual tem direito")
  elsif statusCampo && !@tem_direito
    fail("Usuario pode editar o item no qual nao tem direito")
  end
end
