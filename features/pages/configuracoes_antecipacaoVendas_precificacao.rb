class Configuracoes_antecipacaoVendas_precificacao
    # Demis >>>
    def validar_painel_grid
        if $browser.div(id: /tabViewSpecialPriceId/).span(text: 'Resultados').exists?
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        # elsif $browser.div(id: /label_search_data/).span(text: 'Dados da Pesquisa').exists?
        #    $encoded_img = $browser.driver.screenshot_as(:base64)
        #    return true
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
