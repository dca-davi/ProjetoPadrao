#CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_VER
Entao(/^a aplicacao exibira\/nao exibira a tela "([^"]*)"$/) do |resultados|
   expect(@navegador.find_element(:css, ".alert").text).to eq(msg)
   @navegador.quit
end
