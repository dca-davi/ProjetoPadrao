Entao(/^selecionar o combobox "([^"]*)" e a opcao "([^"]*)", "([^"]*)"$/) do |combo, tipo, valida_step|
    next if @pass_test == true
    @operacao_van = Operacoes_Van.new
    combovan = @operacao_van.selecione_combo_Van(combo, tipo)
    if !combovan && @tem_direito
        raise('Usuario nao pode clicar no combobox no qual tem direito')
    elsif combovan && !@tem_direito
        if valida_step == "1"
          raise('Usuario pode clicar no combobox no qual nao tem direito')
        end
    end
end
