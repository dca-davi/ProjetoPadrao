# OPERACOES_REGULARIZACOESFINANCEIRAS_ENVIODEDEBITOAOCLIENTEANULACAO_VER
Entao(/^clicar no botao "([^"]*)" da aba anulacao$/) do |botao|
    orf = Operacoes_regularizacoesFinanceiras.new
    orfGridDadosDePesquisa = orf.botao_envio_debitos_cliente_anulacao(botao)
    if !orfGridDadosDePesquisa && @tem_direito
        raise('Usuario nao pode acessar a opcao na qual tem direito')
    elsif orfGridDadosDePesquisa && !@tem_direito
        raise('usuario sem o direito consegue acessar a opcao')
    end
end

Entao(/^clicar no botao "([^"]*)" da aba Incluir Cancelamento$/) do |botao|
    ic = Operacoes_regularizacoesFinanceiras.new
    icGridDadosDePesquisa = ic.botao_pesquisar_incluir_cancelamento(botao)
    if !icGridDadosDePesquisa && @tem_direito
        raise('Usuario nao pode acessar a opcao na qual tem direito')
    elsif icGridDadosDePesquisa && !@tem_direito
        raise('usuario sem o direito consegue acessar a opcao')
    end
end

E(/^selecionar o check-box da linha "([^"]*)" na coluna "([^"]*)" da tabela resultados$/) do |linha, coluna|
    next if @pass_test == true
    utils = Utils.new
    radio = utils.selecionar_check_box_tabela(linha, coluna)
    raise("Check-box n\u00E3o dispon\u00EDvel") unless radio
end

Quando (/^selecionar "([^"]*)"$/) do |tratamento|
  @operacoes_regularizacao_financeira = Operacoes_regularizacoesFinanceiras.new
  selec = @operacoes_regularizacao_financeira.check_box(tratamento)
  if !selec && @tem_direito
    raise 'Usuario nao pode selecionar a opcao na qual tem direito'
  elsif selec && !@tem_direito
    raise 'Usuario pode selecionar a opcao na qual nao tem direito'
  end
end

Quando (/^clicar no botao "([^"]*)" da tela de tratamento$/) do |botao|
  @operacoes_regularizacao_financeira = Operacoes_regularizacoesFinanceiras.new
  conf = @operacoes_regularizacao_financeira.clicar_botao_confirmar_tratamento(botao)
  if !conf && @tem_direito
    raise 'Usuario nao pode clicar no botao no qual tem direito'
  elsif conf && !@tem_direito
    raise 'Usuario pode clicar no botao no qual nao tem direito'
  end
end
