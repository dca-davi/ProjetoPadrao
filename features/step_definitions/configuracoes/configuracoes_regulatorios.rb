Quando(/^selecionar Tipo de inclusao "([^"]*)"$/) do |tipo|
    next if @pass_test == true
    config = Configuracoes.new
    config.selecionar_tipoInclusao(tipo)
end
