Quando(/^informar "([^"]*)" no campo "([^"]*)"$/) do |valor, campo|
    next if @pass_test == true
    utils = Utils.new
    campoStatus = utils.preencher_campo_input(valor, campo)
    raise("O campo não aceita o valor #{valor}") unless campoStatus
end

Entao(/^posso\/nao posso informar "([^"]*)" no campo "([^"]*)"$/) do |valor, campo|
    next if @pass_test == true
    utils = Utils.new
    campoStatus = utils.preencher_campo_input(valor, campo)
    if !campoStatus && @tem_direito
        raise("O campo não aceita o valor #{valor}")
    elsif campoStatus && !@tem_direito
        raise("O campo não deveria aceitar o valor #{valor}")
    end
end
