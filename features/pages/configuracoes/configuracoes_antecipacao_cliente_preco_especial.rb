class Configuracoes_antecipacao_cliente_preco_especial
    # Demis >>>
    def validar_painel_grid(_grid)
        if $browser.div(id: /tabViewSpecialPriceId/).span(text: 'Resultados').exists?
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        else
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        end
    end
    # Demis <<<

    # Demis >>>
    def clicar_link_acao(_incluir)
        if $browser.a(href: /tabIncludeId/, text: 'Incluir').click
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        else
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        end
    end
    # Demis <<<
end
