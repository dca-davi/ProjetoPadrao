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
end
