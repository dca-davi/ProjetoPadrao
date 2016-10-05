class Operacoes_regularizacoes_financeiras
    @@utils = Utils.new

    def check_box(tratamento)
      case tratamento
      when 'a primeira opcao da coluna Tratamento'
      if $browser.tr(data_rk: '1').exist?
        $browser.tr(data_rk: '1').click
        sleep 1
        result = true
      else
        result = false
      end
    end
    sleep 2
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end
end
