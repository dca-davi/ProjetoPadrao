class Operacoes_antecipacaoVendas

  def selecione_combo_operacoes(frame, item)

    case  frame
    when 'canal - acumulado diario'
      if $browser.div(:id => "tabAccumulatedDaily:idChannel_label").exist?
        $browser.div(:id => "tabAccumulatedDaily:idChannel_label").click
        sleep 1
        result = true
      else
        result = false
      end
      sleep 1
    end

    case item
    when "CENTRAL"
      if $browser.li(:text => "CENTRAL").exist?
        $browser.li(:text => "CENTRAL").click
        sleep 1
        result = true
      else
        result = false
      end
    end
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end

  def clicar_botao_esp
    if $browser.button(:id => "tabAccumulatedDaily:button_Arv_msg_pesquisa_Clg").exist?
      $browser.button(:id => "tabAccumulatedDaily:button_Arv_msg_pesquisa_Clg").click
      sleep 1
      result = true
    else
      result = false
    end
    sleep 3
      $encoded_img = $browser.driver.screenshot_as(:base64)
    end
end
