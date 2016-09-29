class Operacoes_Van

  def selecione_combo_Van(combo, tipo)

    case  combo
    when 'Bandeira'
      if $browser.label(:id => 'combo_OperationsVanSearchBeanvanProductReplyDTOcardAssociationReq_label', :text => 'Selecione', :index => 0).exist?
        $browser.label(:id => 'combo_OperationsVanSearchBeanvanProductReplyDTOcardAssociationReq_label', :text => 'Selecione', :index => 0).click
        sleep 1
        result = true
      else
        result = false
      end

      case  tipo
      when 'AMEX'
        if $browser.li(:text => 'AMEX', :index => 0).exist?
          $browser.li(:text => 'AMEX', :index => 0).click
          sleep 1
          result = true
        else
          result = false
        end

    end
    sleep 5
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end
end
end
