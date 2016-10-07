class Operacoes_Rejeicao
  @@utils = Utils.new

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

    def clicar_botao_pequisar_captura_tratamento(botao)
      if $browser.button(text: botao,index:1).exist?
        $browser.button(text: botao,index:1).click
        sleep 2
        result = true
      else
        result = false
      end
      sleep 1
      @@utils.aguardar_loading
      $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def clicar_botao_input
    if $browser.button(name: 'tabRejectionCapture:j_idt261',index: 0).exist?
          $browser.button(name: 'tabRejectionCapture:j_idt261',index: 0).click
          result = true
        else
            result = false
        end
        sleep 5
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end


end
