class Configuracoes_antecipacaoVendas
  @@utils = Utils.new

  def clicar_botao_incluir(incluir)

    case incluir
    when 'incluir - custo de captacao'
      if $browser.div(:id => "tabCosts:button_Arv_msg_arvcapitationcostinclude_").exist?
        $browser.div(:id => "tabCosts:button_Arv_msg_arvcapitationcostinclude_").click
        sleep 1
        result = true
      else
        result = false
      end
    end
    sleep 3
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end

  def clicar_confirmar_custoDeCaptacao(confirmar)

    case confirmar
    when 'confirmar - custo de captacao - incluir'
      if $browser.button(:id => 'tabCosts:button_Arv_msg_confirmar_30E').exist?
        $browser.button(:id => 'tabCosts:button_Arv_msg_confirmar_30E').click
        sleep 1
        result = true
      else
        result = false
      end

    when 'confirmar - custo de captacao - editar'
      if $browser.button(:id => 'tabCosts:button_Arv_msg_confirmar_').exist?
        $browser.button(:id => 'tabCosts:button_Arv_msg_confirmar_').click
        sleep 1
        result = true
      else
        result = false
      end

    when 'ok'
      if $browser.button(:id => 'tabCosts:button_Arv_msg_ok_iXK').exist?
        $browser.button(:id => 'tabCosts:button_Arv_msg_ok_iXK').click
        sleep 1
        result = true
      else
        result = false
      end

    when 'ok - editar'
      if $browser.button(:id => 'tabCosts:button_Arv_msg_ok_jaW').exist?
        $browser.button(:id => 'tabCosts:button_Arv_msg_ok_jaW').click
        sleep 1
        result = true
      else
        result = false
      end
    end
    sleep 4
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end
end
