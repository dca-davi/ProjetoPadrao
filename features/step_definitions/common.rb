Dado(/^que eu faca login$/) do
  @utils = Utils.new
  @utils.visit
  @utils.fazer_login
end

E(/^informe o EC "([^"]*)"$/) do |ec|
  @pagina_ini = Pagina_inicial.new
  @pagina_ini.informar_ec(ec)
end

Dado(/^que tenha\/nao tenha o direito "([^"]*)"$/) do |direito|
  puts "<b>Perfil:</b> #{$perfil}"
  @tem_direito =  @utils.tem_direito?(direito)
  statusDir = @utils.verificar_direito_star(direito, @tem_direito)
  if statusDir != nil
    fail(statusDir)
  end
end

E(/^que tenha\/nao tenha acesso na tela "([^"]*)"$/) do |tela|

@acessa_tela = @utils.acessar_pagina(tela)

  if !@acessa_tela && !@tem_direito
    @pass_test = true
    next
  end
end

E(/^informe o nivel de hierarquia como "([^"]*)"$/) do |hierarquia|
  @utils.alterar_hierarquia(hierarquia)
end
