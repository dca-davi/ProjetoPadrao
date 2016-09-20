class Pagina_inicial
    @@utils = Utils.new

    def informar_ec(ec)
        $browser.text_field(name: 'frmGeneralSearch:mskClientIdentification').set ec
        $browser.span(text: 'Pesquisar').click

        @@utils.aguardar_loading
        sleep 2
        $encoded_img = $browser.driver.screenshot_as(:base64)
        if $browser.span(text: 'Busca sem resultados').exists?
            raise 'Infomar EC valido'
        end
    end
end
