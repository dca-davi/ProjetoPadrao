class Relatorios_financeiros

  def informar_periodo_unico(data, tela)

    case tela
    when 'Resumo contábil sintético'
    if $browser.text_field(:id => /reportSummry:datePaymment/).exist?
      2.times {$browser.text_field(:id => /reportSummry:datePaymment/).set data}
      sleep 2
      $browser.send_keys :tab
      result = true
    else
      result = false
    end

    when 'Pagamentos baixados sem retorno'
      if $browser.text_field(:id => /dateFilter_input/).exist?
      2.times {$browser.text_field(:id => /dateFilter_input/).set data}
      sleep 2
      $browser.send_keys :tab
      result = true
    else
      result = false
    end
      $encoded_img = $browser.driver.screenshot_as(:base64)
    end
  end
end
