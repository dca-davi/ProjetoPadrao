class Pagina_inicial
    @@utils = Utils.new

    def informar_ec(ec)
        @@utils.aguardar_loading
        $browser.span(class: 'ui-menuitem-icon ui-icon icoHome').click
        @@utils.aguardar_loading
        
        @@utils.aguardar_loading
        raise 'Tela Página Inicial - Campo de pesquisa por EC não encontrado' unless $browser.text_field(name: /frmGeneralSearch:mskClientIdentification/).exist?
        $browser.text_field(name: 'frmGeneralSearch:mskClientIdentification').set ec
        $browser.span(text: 'Pesquisar').click

        @@utils.aguardar_loading
        $encoded_img = $browser.driver.screenshot_as(:base64)
        if $browser.span(text: 'Busca sem resultados').exists?
            raise 'Infomar EC valido'
        end
    end
end
