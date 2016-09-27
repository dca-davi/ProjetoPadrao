class Cliente_Resumo_financeiro
  @@utils = Utils.new

  def clicar_consolidado_vendas
    sleep 2
    if  $browser.tr(:data_ri => "0").td(:index => 0).exist?
      $browser.tr(:data_ri => "0").td(:index => 0).click
      result = true
    else
      result = false
    end
    sleep 3
    @@utils.aguardar_loading
    sleep 2
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end
end
