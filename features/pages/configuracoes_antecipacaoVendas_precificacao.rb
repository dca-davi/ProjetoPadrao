class Configuracoes_antecipacaoVendas_precificacao
    def validar_painel_grid(_grid)
        if $browser.div(id: /tabViewSpecialPriceId/).span(text: 'Resultados').exists?
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        else
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        end
    end
end
