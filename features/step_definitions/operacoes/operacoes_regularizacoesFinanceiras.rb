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
