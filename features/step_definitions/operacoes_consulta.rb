Entao(/^o campo "([^"]*)" existe\/nao existe$/) do |campo|\
  next if @pass_test == true
  utils = Utils.new
  statusCampo = utils.verificar_label(campo)
  if !statusCampo && @tem_direito
    fail("Usuario nao pode ver o campo na qual tem direito")
  elsif statusCampo && !@tem_direito
    fail("usuario sem o direito consegue pode ver o campo")
  end
end
