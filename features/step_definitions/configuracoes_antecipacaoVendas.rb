#CONFIGURACOES_ANTECIPACAO_CLIENTE_PRECOESPECIAL_VER
Entao(/^a aplicacao exibira\/nao exibira o painel "([^"]*)"$/) do |painel|
  expect(@browser.find_element(:css, ".alert").text).to eq(msg)
end
