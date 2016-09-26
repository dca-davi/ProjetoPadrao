Quando(/^selecionar Tipo de inclusao "([^"]*)"$/) do |tipo|
    config = Configuracoes.new
    config.selecionar_tipoInclusao(tipo)
end
