class Operacoes_regularizacoesFinanceiras
    @@utils = Utils.new
    def botao_envio_debitos_cliente_anulacao(botao)
        if $browser.button(text: botao, index: 1).exist?
            $browser.button(text: botao, index: 1).click
            sleep 3
            result = true
        else
            result = false
        end
        sleep 3
        @@utils.aguardar_loading
        sleep 1
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def botao_pesquisar_incluir_cancelamento(botao)
        if $browser.button(text: botao, index: 1).exist?
            $browser.button(text: botao, index: 1).click
            sleep 3
            result = true
        else
            result = false
        end
        sleep 3
        @@utils.aguardar_loading
        sleep 1
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

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

    def clicar_botao_confirmar_tratamento(botao)
        if $browser.button(text: botao, index: 1).exist?
            $browser.button(text: botao, index: 1).click
            sleep 2
            result = true
        else
            result = false
        end
        sleep 2
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end
end
