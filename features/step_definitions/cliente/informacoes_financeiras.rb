Quando(/^selecionar um valor na tabela de Informacoes financeiras$/) do
    next if @pass_test == true
    info_cli = Info_do_cliente.new
    info_cli.click_primeiro_valorDia
end
