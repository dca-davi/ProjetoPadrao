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

    def selecionar_periodo_tela_consolidados
        semana_passada = Date.today - 7
        semana_passada = @@utils.formata_data_sem_horario(semana_passada, 'dd/mm/aaaa')
        hoje = @@utils.formata_data_atual('dd/mm/aaaa')

        @@utils.aguardar_loading
        if $browser.text_field(name: /dtVendasIni_input/).exist?
            $browser.execute_script('arguments[0].value = arguments[1]', $browser.text_field(name: /dtVendasIni_input/), semana_passada)
        end

        $encoded_img = $browser.driver.screenshot_as(:base64)
        $browser.button(text: 'Pesquisar').click
        @@utils.aguardar_loading
    end

    def ver_valor_intercambio
        @@utils.aguardar_loading
        if $browser.table(id: 'panelTotalConsolidado').tbody.span(text: 'Valor do intercâmbio').present?
            result = true
        else
            result = false
        end
        sleep 2
        $encoded_img = $browser.driver.screenshot_as(:base64)
        return result
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
                next if index == 0
                puts linha[0].div.exist?
                if linha[0].div.exist?
                    result = true
                    linha[0].div.click
                    @@utils.aguardar_loading
                end
            end
        end
        return result
    end
end
