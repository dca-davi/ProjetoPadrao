class Configuracoes_antecipacao_cliente_preco_especial
  @@utils = Utils.new

    def validar_painel_grid(_grid)
        if $browser.div(id: /tabViewSpecialPriceId/).span(text: 'Resultados').exists?
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        else
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        end
    end

    def clicar_link_acao(_incluir)
        if $browser.a(text: _incluir).exists?
            $browser.a(text: _incluir).click
            @@utils.aguardar_loading
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        else
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        end
    end
    
end
