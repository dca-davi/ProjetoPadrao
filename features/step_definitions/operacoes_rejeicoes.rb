Quando(/^informar os filtros na tela "([^"]*)" e clicar no botao "([^"]*)"$/) do |tela, botao|
  filtros = Trava_Prazo_Vencido.new
  filtros.preencher_filtros (tela)
  utils = Utils.new
  utils.clicar_botao_tela (botao)
end

Entao(/^o botao "([^"]*)" estara habilitado\/desabilitado$/) do |botao|
  @trava_rejeicao = Trava_Prazo_Vencido.new
  @trava_rejeicao.validar_botao_exportar_grid (botao)
  if !@tem_direito && @trava_rejeicao
    fail ("Usuario nao pode acessar a opcao na qual tem direito")
  elsif @tem_direito && !@trava_rejeicao
    fail ("Usuario nao pode acessar a opcao na qual tem direito")
  end
end
