class Info_do_cliente
  @@utils = Utils.new

  def clicar_botao_frame(botao, frame)
    result = true
    sleep 2
    Watir::Wait.until {$browser.button(:text => botao).exists?}
    sleep 1
    case frame.downcase
    when "dados de cadastro", "dados do tipo de pagamento", "detalhe da alçada", "taxa efetiva máxima", "parâmetro para cálculo do share", "últimas transações", "resultados"
        if $browser.button(:text => botao, :index => 0).attribute_value("aria-disabled") == "false"
          $browser.button(:text => botao, :index => 0).click
        else
          result = false
        end
      when "endereço do contrato", "atribuição de categoria/preço", "atribuição de categoria/preço"
        if $browser.button(:text => botao, :index => 1).attribute_value("aria-disabled") == "false"
          $browser.button(:text => botao, :index => 1).click
        else
          result = false
        end
      when "situação do cliente", "antecipação programada", "reserva financeira"
        if $browser.button(:text => botao, :index => 2).attribute_value("aria-disabled") == "false"
          $browser.button(:text => botao, :index => 2).click
        else
          result = false
        end

      when "valor mínimo por operação"
        if $browser.button(:text => botao, :index => 3).attribute_value("aria-disabled") == "false"
          $browser.button(:text => botao, :index => 3).click
        else
          result = false
        end
      when "ramos de atividade restritos"
        if $browser.button(:text => botao, :index => 4).attribute_value("aria-disabled") == "false"
          $browser.button(:text => botao, :index => 4).click
        else
          result = false
        end
      when "cartão não presente"
        if $browser.button(:text => botao, :index => 5).attribute_value("aria-disabled") == "false"
          $browser.button(:text => botao, :index => 5).click
        else
          result = false
        end
      else
        fail("informar frame valido")
      end

    @@utils.aguardar_loading
    $encoded_img = $browser.driver.screenshot_as(:base64)
    return result
  end

  def alterar_status_cadastro(valor)
    Watir::Wait.until {$browser.div(:id => /cmb_account_status_panel/).exists?}
      $browser.execute_script("arguments[0].click()", $browser.div(:id => /cmb_account_status_panel/).li(:text => valor))
      @@utils.aguardar_loading
      $encoded_img = $browser.driver.screenshot_as(:base64)
  end

  def verificar_status_cadastro
    Watir::Wait.until {$browser.input(:id => /cmb_account_status_focus/).exists?}
    if $browser.input(:id => /cmb_account_status_focus/).attribute_value("disabled") == "true"
      $encoded_img = $browser.driver.screenshot_as(:base64)
      return false
    else
      $encoded_img = $browser.driver.screenshot_as(:base64)
      return true
    end
  end

  def verificar_valor_lista_motivoDoFechamento(valor)
    if $browser.div(:id => /cmb_closure_reason_panel/).li(:text => valor).exists?
      $browser.execute_script("arguments[0].click()", $browser.div(:id => /cmb_closure_reason_panel/).li(:text => valor))
      $encoded_img = $browser.driver.screenshot_as(:base64)
      return true
    else
      $browser.div(:id => /cmb_closure_reason/).span(:class => /icon-triangle/).click
      sleep 1
      $encoded_img = $browser.driver.screenshot_as(:base64)
      return false
    end
  end

  def verificar_status_bloqueio
    Watir::Wait.until {$browser.input(:id => /blockPayment_focus/).exists?}
    if $browser.input(:id => /blockPayment_focus/).attribute_value("disabled") == "true"
      $encoded_img = $browser.driver.screenshot_as(:base64)
      return false
    else
      $encoded_img = $browser.driver.screenshot_as(:base64)
      return true
    end
  end

  def action_dadosProp(acao)
    sleep 2
    case acao
    when "Editar"
      Watir::Wait.until {$browser.span(:class => /icoEdit/)}
      if $browser.span(:class => /icoEdit/).parent.attribute_value('aria-disabled') == "true"
        $encoded_img = $browser.driver.screenshot_as(:base64)
        return false
      else
        $browser.span(:class => /icoEdit/).click
        $browser.span(:text => "Editar Dados do Proprietário").wait_until_present
        $encoded_img = $browser.driver.screenshot_as(:base64)
        return true
      end
    end
  end

  def verificar_campo_razaoSocial
    Watir::Wait.until {$browser.input(:id => /legalNameId/).exists?}
    sleep 1
    statusRazao = $browser.input(:id => /legalNameId/).attribute_value('aria-disabled')
    if statusRazao == 'true'
      return false
    else
      return true
    end
  end

  def verificar_campo_site
    Watir::Wait.until {$browser.input(:id => /input_BoardingMerchantEditBeanNewsite/).exists?}
    sleep 1
    statusRazao = $browser.input(:id => /input_BoardingMerchantEditBeanNewsite/).attribute_value('aria-disabled')
    if statusRazao == 'true'
      return false
    else
      return true
    end
  end

  def verificar_campo_codigoAmex
    Watir::Wait.until {$browser.input(:id => /amexId/).exists?}
    sleep 1
    statusCampo = $browser.input(:id => /amexId/).attribute_value('aria-disabled')
    $encoded_img = $browser.driver.screenshot_as(:base64)
    if statusCampo == 'true'
      return false
    else
      return true
    end
  end

  def action_dadosContato(botao)
    case botao
    when "Editar"
      Watir::Wait.until {$browser.button(:name => /btn_info_.*_edit/, :index => 0).exists?}
      sleep 1
      if $browser.button(:name => /btn_info_.*_edit/, :index => 0).attribute_value('aria-disabled') == "true"
        $encoded_img = $browser.driver.screenshot_as(:base64)
        return false
      else
        $browser.button(:name => /btn_info_.*_edit/, :index => 0).click
        sleep 3
        $encoded_img = $browser.driver.screenshot_as(:base64)
        return true
      end
    end
  end

  def validar_Tela_pesquisa
    @@utils.aguardar_loading
    sleep 1
    if $browser.span(:text => /Dados da (P|p)esquisa/).exists?
      return true
    else
      return false
    end
  end

  def selecionar_bandeira_filtro(bandeira)
    $browser.div(:id => /mnuCardBrand/).wait_until_present
    sleep 1
    $browser.div(:id => /mnuCardBrand/).span(:class => /ui-icon-triangle-1-s/).click
    $browser.execute_script("arguments[0].click()", $browser.li(:text => /#{bandeira}/, :index => 0))
    sleep 1
    @@utils.aguardar_loading
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end

  def selecionar_primeiro_item_busca
      $browser.tbody(:id => /dtbVan_data/).span(:class => /icoView/,:index => 0).wait_until_present

      $browser.tbody(:id => /dtbVan_data/).span(:class => /icoView/,:index => 0).click
  end

  def verificar_edicao_bloqueio(motivo)
    @@utils.aguardar_loading
    $browser.tbody(:id => /BlockingClient/).wait_until_present
    sleep 1
    statusbtn = $browser.tbody(:id => /BlockingClient/).td(:text => /#{motivo}/).parent.button(:index => 0).attribute_value("aria-disabled")
    if statusbtn == "true"
      return false
    else
      return true
    end
  end

  def click_primeiro_valorDia
    $browser.a(:id => /link_cash_in_today/, :index => 0).wait_until_present
    $browser.a(:id => /link_cash_in_today/, :index => 0).click
    @@utils.aguardar_loading
  end

end
