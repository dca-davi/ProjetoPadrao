class Trava_Prazo_Vencido
    @@utils = Utils.new

    def validar_pagina(tela)
        sleep 1
        @@utils.aguardar_loading
        sleep 2
        if $browser.h1(text: tela).exist?
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        else
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        end
    end

    def validar_botao(botao)
        Watir::Wait.until { $browser.button(text: botao).exists? }
        if $browser.button(text: botao).attribute_value('aria-disabled') == 'true'
            result = false
        else
            result = true
        end
        $encoded_img = $browser.driver.screenshot_as(:base64)
        result
    end
end
