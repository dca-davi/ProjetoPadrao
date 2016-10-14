class Relatorios_financeiros
  @@utils = Utils.new

  def informar_periodo_unico(data, tela)

    case tela
    when 'Resumo contábil sintético'
    if $browser.text_field(:id => /reportSummry:datePaymment/).exist?
      2.times {$browser.text_field(:id => /reportSummry:datePaymment/).set data}
      sleep 2
      $browser.send_keys :tab
      result = true
      $encoded_img = $browser.driver.screenshot_as(:base64)
    else
      result = false
      $encoded_img = $browser.driver.screenshot_as(:base64)
    end

  when 'Data de pagamento de'
  if $browser.text_field(:id => /startDateRequestId_input/).exist?
    2.times {$browser.text_field(:id => /startDateRequestId_input/).set data}
    sleep 2
    $browser.send_keys :tab
    result = true
    $encoded_img = $browser.driver.screenshot_as(:base64)
  else
    result = false
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end

when 'Data de pagamento ate'
if $browser.text_field(:id => /endDateRequestId_input/).exist?
  2.times {$browser.text_field(:id => /endDateRequestId_input/).set data}
  sleep 2
  $browser.send_keys :tab
  result = true
  $encoded_img = $browser.driver.screenshot_as(:base64)
else
  result = false
  $encoded_img = $browser.driver.screenshot_as(:base64)
end

    when 'Pagamentos baixados sem retorno'
      if $browser.text_field(:id => /dateFilter_input/).exist?
      2.times {$browser.text_field(:id => /dateFilter_input/).set data}
      sleep 2
      $browser.send_keys :tab
      result = true
      $encoded_img = $browser.driver.screenshot_as(:base64)
    else
      result = false
      $encoded_img = $browser.driver.screenshot_as(:base64)
    end
  #Usado para a tela de Operações - antecipacao de vendas >>
  when 'Acumulado diario - Por banco'
    if $browser.text_field(:id => /tabAccumulatedDaily:paymentDayId_input/).exist?
    2.times {$browser.text_field(:id => /tabAccumulatedDaily:paymentDayId_input/).set data}
    sleep 2
    $browser.send_keys :tab
    result = true
    $encoded_img = $browser.driver.screenshot_as(:base64)
  else
    result = false
  end
  sleep 2
      $encoded_img = $browser.driver.screenshot_as(:base64)


  when 'Acumulado diario - Por canal'
    if $browser.text_field(:id => /tabAccumulatedDaily:paymentDayChannelId_input/).exist?
    2.times {$browser.text_field(:id => /tabAccumulatedDaily:paymentDayChannelId_input/).set data}
    sleep 2
    $browser.send_keys :tab
    result = true
  else
    result = false
  end
  sleep 2
  $encoded_img = $browser.driver.screenshot_as(:base64)
    end
  end

  def selecionar_tabela_resumo_contabil_sintetico(tipo)
    case tipo
    when 'captura de vendas - vendas'
    if $browser.label(id: 'reportSummry:label_SummarizedAccountingSaleReportBeansummaryAccountingDTOvlSalesAcceptedFIC').exist?
      $browser.label(id: 'reportSummry:label_SummarizedAccountingSaleReportBeansummaryAccountingDTOvlSalesAcceptedFIC').click
      sleep 2
      result = true
    else
      result = false
    end
  end
  sleep 2
  $encoded_img = $browser.driver.screenshot_as(:base64)
end

def validar_botao_exportar(botao)
    # result = true
    sleep 1
    Watir::Wait.until { $browser.button(text: botao).exists? }
    if $browser.button(text: botao).exist?
        sleep 1
        result = true
    else
        result = false
    end
    sleep 2
    $encoded_img = $browser.driver.screenshot_as(:base64)
    result
end

def clicar_valor_bruto
  if $browser.label(id: /reportSummry:label_SummarizedAccountingSaleReportBeansummaryAccountingDTOvlSalesAcceptedFIC/).exist?
    $browser.label(id: /reportSummry:label_SummarizedAccountingSaleReportBeansummaryAccountingDTOvlSalesAcceptedFIC/).click
    sleep 2
    result = true
  else
    result = false
  end
  sleep 3
  $encoded_img = $browser.driver.screenshot_as(:base64)
end#





end
