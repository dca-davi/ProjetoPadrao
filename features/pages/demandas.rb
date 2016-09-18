class Demandas
@@utils = Utils.new

  def pesquisa_alcada(situacao)
    $browser.execute_script("arguments[0].click()", $browser.div(:id => /cmb_sit_panel/).li(:text => situacao))
    $browser.button(:text => "Pesquisar").click
    @@utils.aguardar_loading
    sleep 1
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end

  def selecionar_primeiro_item_alcada
    $browser.img(:src => /icoView/, :index => 0).wait_until_present
    $browser.img(:src => /icoView/, :index => 0).click
    sleep 1
    @@utils.aguardar_loading
    sleep 2
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end

  def validar_visualizar_limites
    sleep 3
    if $browser.div(:id => /tabViewPesquisa/).present?
      $encoded_img = $browser.driver.screenshot_as(:base64)
      return true
    else
      $encoded_img = $browser.driver.screenshot_as(:base64)
      return false
    end
  end

end
