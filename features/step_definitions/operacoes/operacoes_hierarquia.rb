Quando(/^clicar no link "([^"]*)"$/) do |texto|
    next if @pass_test == true
    utils = Utils.new
    click_link = utils.clicar_link(texto)
    if !click_link && @tem_direito
        raise('Usuario nao pode acessar a opcao na qual tem direito')
    elsif click_link && !@tem_direito
        raise('usuario sem o direito consegue acessar a opcao')
    end
end