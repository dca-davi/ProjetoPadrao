Quando(/^informar os filtros na tela "([^"]*)" e clicar no botao "([^"]*)"$/) do |tela, botao|
    filtros = Trava_Prazo_Vencido.new
    filtros.preencher_filtros tela
    utils = Utils.new
    utils.clicar_botao_tela botao
end

Entao(/^o botao "([^"]*)" estara habilitado\/desabilitado$/) do |botao|
    @trava_rejeicao = Trava_Prazo_Vencido.new
    @trava_rejeicao.validar_botao_exportar_grid botao
    if !@tem_direito && @trava_rejeicao
        raise 'Usuario pode acessar a opcao na qual tem direito'
    elsif @tem_direito && !@trava_rejeicao
        raise 'Usuario nao pode acessar a opcao na qual tem direito'
    end
end

Quando (/^selecionar a opcao "([^"]*)" do campo "([^"]*)"$/) do |item, frame|
  @trava_rejeicao = Operacoes_Rejeicao.new
  btmCombo = @trava_rejeicao.selecione_combo(frame, item)
  if !btmCombo && @tem_direito
    raise 'Usuario nao pode clicar na opcao na qual tem direito'
  elsif btmCombo && !@tem_direito
    raise 'Usuario pode clicar na opcao na qual tem direito'
  end
end
