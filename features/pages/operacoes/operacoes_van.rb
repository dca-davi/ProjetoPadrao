class Operacoes_Van

  def selecione_combo_Van(combo, tipo) #Serve para selecionar outros combos

    case  combo
    when 'Bandeira'
      if $browser.label(:id => 'combo_OperationsVanSearchBeanvanProductReplyDTOcardAssociationReq_label', :text => 'Selecione', :index => 0).exist?
        $browser.label(:id => 'combo_OperationsVanSearchBeanvanProductReplyDTOcardAssociationReq_label', :text => 'Selecione', :index => 0).click
        sleep 1
        result = true
      else
        result = false
      end

    when 'Status'
      if $browser.label(:id => 'formArvConsultAntecipationScheduledRegistered:cmb_status_label', :text => 'Selecione', :index => 0).exist?
        $browser.label(:id => 'formArvConsultAntecipationScheduledRegistered:cmb_status_label', :text => 'Selecione', :index => 0).click
        sleep 1
        result = true
      else
        result = false
      end

    when 'parametro - regra de cancelamento'
      if $browser.label(:id => 'tab_tabGeral:tab_constraint:cancelSearchForm:comboParam_label', :index => 0).exist?
        $browser.label(:id => 'tab_tabGeral:tab_constraint:cancelSearchForm:comboParam_label', :index => 0).click
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

      when 'Vigente'
        if $browser.li(:text => 'Vigente', :index => 0).exist?
          $browser.li(:text => 'Vigente', :index => 0).click
          sleep 1
          result = true
        else
          result = false
        end

      when 'Liberar consulta de saldo'
        if $browser.li(text: 'Liberar consulta de saldo',index: 0).exist?
         $browser.li(text: 'Liberar consulta de saldo',index: 0).click
         sleep 1
         result = true
       else
         result = false
       end

     when 'Liberar bloqueio de cancelamento'
       if $browser.li(text: 'Liberar bloqueio de cancelamento',index: 0).exist?
        $browser.li(text: 'Liberar bloqueio de cancelamento',index: 0).click
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
