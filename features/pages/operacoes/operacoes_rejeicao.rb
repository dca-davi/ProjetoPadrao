class Operacoes_Rejeicao

  def selecione_combo(frame, item)

    case  frame
    when 'Situação da solicitação'
      if $browser.div(:id => "cmbRequestSituation").exist?
        $browser.div(:id => "cmbRequestSituation").click
        sleep 1
        result = true
      else
        result = false
      end

    when 'Tipo de solicitação'
      if $browser.div(:id => "cmbRequestType_label").exist?
      $browser.div(:id => "cmbRequestType_label").click
      sleep 1
      result = true
    else
      result = false
    end

  # Tela de Operacoes-Hierarquia>>>
  when 'Pesquisar grupo por'
    if $browser.div(:id => "tabProduct:cmbSearchClientBy_label").exist?
    $browser.div(:id => "tabProduct:cmbSearchClientBy_label").click
    sleep 1
    result = true
  else
    result = false
    end
    #Tela de Operacoes-Hierarquia<<<
  end

  case item
  when 'Rejeitada'
    if $browser.li(:text => "Rejeitada").exist?
      $browser.li(:text => "Rejeitada").click
      sleep 1
      result = true
    else
      reult = false
    end

      when 'Concluída'
        if $browser.li(:text => "Rejeitada").exist?
          $browser.li(:text => "Rejeitada").click
          sleep 1
          result = true
        else
          result = false
        end

      # Tela de Operacoes-Hierarquia>>>
      when 'Nº do cliente individual'
        if $browser.li(:text => "Nº do cliente individual").exist?
          $browser.li(:text => "Nº do cliente individual").click
          sleep 1
          result = true
        else
          result = false
        end

      when 'Raiz do CNPJ'
        if $browser.li(:text => "Raiz do CNPJ").exist?
          $browser.li(:text => "Raiz do CNPJ").click
          sleep 1
          result = true
        else
          result = false
        end

      when 'CNPJ'
        if $browser.li(:text => "CNPJ").exist?
          $browser.li(:text => "CNPJ").click
          sleep 1
          result = true
        else
          result = false
        end

      when 'CPF'
        if $browser.li(:text => "CPF").exist?
          $browser.li(:text => "CPF").click
          sleep 1
          result = true
        else
          result = false
        end
        # Tela de Operacoes-Hierarquia<<<
      end
      sleep 2
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

end