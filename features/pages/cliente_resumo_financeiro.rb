class Cliente_Resumo_financeiro
    @@utils = Utils.new

    def clicar_consolidado_vendas
        @@utils.aguardar_loading
        if $browser.tr(data_ri: '0').td(index: 0).exist?
            $browser.tr(data_ri: '0').td(index: 0).click
            result = true
        else
            result = false
        end
        sleep 3
        @@utils.aguardar_loading
        sleep 2
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def clicar_detalhado_vendas
        @@utils.aguardar_loading
        if $browser.tr(data_ri: '0').td(index: 1).exist?
            2.times { $browser.tr(data_ri: '0').td(index: 1).click }
            result = true
        else
            result = false
        end
        sleep 3
        @@utils.aguardar_loading
        sleep 2
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def expandir_primeiro_item
        result = false
        @@utils.aguardar_loading
        if $browser.div(id: /extrato__vendas_detalhado:idTbDetalhado/).table.exist?
            $browser.div(id: /extrato__vendas_detalhado:idTbDetalhado/).table.rows.each_with_index do | linha, index |
                puts "AHHHHHHHHHHHHHHHHHHHHHHHHHHHH"
                next if index = 0
                puts linha[0].div.exist?
                if linha[0].div.exist?
                    puts "OBA"
                    result = true
                    linha[0].div.click
                    @@utils.aguardar_loading
                end
            end
        end
        return result
    end
end
