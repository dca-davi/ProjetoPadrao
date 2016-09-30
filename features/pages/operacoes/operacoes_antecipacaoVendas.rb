class Operacoes_antecipacaoVendas
  @@utils = Utils.new

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

  when 'Status'
    if $browser.div(:id => "formConsultationSalesAnticipationOperations:cmb_status_label").exist?
      $browser.div(:id => "formConsultationSalesAnticipationOperations:cmb_status_label").click
      sleep 1
      result = true
    else
      result = false
    end

  end

    case item
    when "Efetivado"
      if $browser.li(:text => "Efetivado").exist?
        $browser.li(:text => "Efetivado").click
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

    def clicar_aba_precificacao
      if $browser.a(href: '#tabOperationAnticipation:tabPricing').exist?
        $browser.a(href: '#tabOperationAnticipation:tabPricing').click
        sleep 1
        result = true
      else
        result = false
      end
      sleep 2
      @@utils.aguardar_loading
      $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def clicar_no_link(link)
    case link
    when 'Alterar valores de negociacao'
      if $browser.a(id: 'tabOperationAnticipation:link_Arv_msg_arvprepaymentaltervalues_run', :index => 0).exist?
        $browser.a(id: 'tabOperationAnticipation:link_Arv_msg_arvprepaymentaltervalues_run', :index => 0).click
        sleep 1
        result = true
      else
        result = false
      end
    end
    sleep 2
    @@utils.aguardar_loading
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end

  def clicar_botao_ok
    if $browser.button(id: "tabOperationAnticipation:button_Arv_msg_yes_cMd", index: 0).exist?
      $browser.button(id: "tabOperationAnticipation:button_Arv_msg_yes_cMd", index: 0).click
      sleep 2
      result = true
    else
      result = false
    end
    sleep 2
    @@utils.aguardar_loading
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end


end
