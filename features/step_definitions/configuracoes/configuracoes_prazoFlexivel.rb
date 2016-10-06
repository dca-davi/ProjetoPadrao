Entao (/^clicar no botao "([^"]*)" da aba - Precos e Alcadas$/) do |botao|
      next if @pass_test == true
      @configuracoes_prazoFlexivel = Configuracoes_prazoFlexivel.new
      btedit = @configuracoes_prazoFlexivel.clicar_botao_editar(botao)
      if !btedit && @tem_direito
          raise("Usuario nao pode clicar no botao no qual tem direito")
      elsif btedit && !@tem_direito
          raise("usuario sem o direito consegue clicar no botao")
      end
  end
