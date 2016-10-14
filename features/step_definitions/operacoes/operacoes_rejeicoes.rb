Quando(/^informar os filtros na tela "([^"]*)" e clicar no botao "([^"]*)"$/) do |tela, botao|
    filtros = Trava_Prazo_Vencido.new
    filtros.preencher_filtros tela
    utils = Utils.new
    utils.clicar_botao_tela botao
end


Quando(/^o botao "([^"]*)" estara habilitado\/desabilitado$/) do |botao|
    @operacoes_rejeicoes = Utils.new
    btnExprt = @operacoes_rejeicoes.validar_btn_exportar(botao)
    if btnExprt && !@tem_direito
        raise 'Usuario pode acessar a opcao na qual nao tem direito'
    elsif !btnExprt && @tem_direito
        raise 'Usuario nao pode acessar a opcao na qual nao tem direito'
    end
end

Quando (/^selecionar a opcao "([^"]*)" do campo "([^"]*)"$/) do |item, frame|
  @trava_rejeicao = Operacoes_Rejeicao.new
  btmCombo = @trava_rejeicao.selecione_combo(frame, item)
  if !btmCombo && @tem_direito
    raise 'Usuario nao pode clicar na opcao na qual tem direito'
  elsif btmCombo && !@tem_direito
    raise 'Usuario pode clicar na opcao na qual nao tem direito'
  end
end

Quando (/^clicar no botao "([^"]*)" da tela captura$/) do |botao|
  @operacoes_rejeicao = Operacoes_Rejeicao.new
  btnPesquisar = @operacoes_rejeicao.clicar_botao_pequisar_captura_tratamento(botao)
  if !btnPesquisar && @tem_direito
    raise 'Usuario nao pode clicar no botao no qual tem direito'
  elsif btnPesquisar && !@tem_direito
    raise 'Usuario pode clicar no botao no qual nao tem direito'
  end
end
