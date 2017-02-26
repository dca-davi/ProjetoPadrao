class Info_do_cliente
    @@utils = Utils.new

    def clicar_botao_frame(botao, frame)
        result = true
        sleep 2
        #Watir::Wait.until { $browser.button(text: botao).exists? }
        sleep 1
        case frame.downcase
        when 'dados de cadastro', 'dados do tipo de pagamento', "detalhe da al\u00E7ada", "taxa efetiva m\u00E1xima", "par\u00E2metro para c\u00E1lculo do share", "\u00FAltimas transa\u00E7\u00F5es", 'resultados', 'endereço', 'planos do cliente'
          if $browser.button(text: botao).exists?
            if $browser.button(text: botao, index: 0).attribute_value('aria-disabled') == 'false'
                $browser.button(text: botao, index: 0).click
                sleep 3
            else
                result = false
            end
          else
              result = false
          end

        when "endere\u00E7o do contrato", "atribui\u00E7\u00E3o de categoria/pre\u00E7o", "atribui\u00E7\u00E3o de categoria/pre\u00E7o", "dados da segmenta\u00E7\u00E3o", 'resultados'
          if $browser.button(text: botao).exists?
            if $browser.button(text: botao, index: 1).attribute_value('aria-disabled') == 'false'
                $browser.button(text: botao, index: 1).click
                sleep 3
            else
                result = false
            end
          else
              result = false
          end

        when "remuneracao", "antecipa\u00E7\u00E3o programada", 'reserva financeira'
            if $browser.button(text: botao, index: 1).attribute_value('aria-disabled') == 'false'
                $browser.button(text: botao, index: 1).click
                sleep 3
            else
                result = false
            end

        when "situa\u00E7\u00E3o do cliente"
            if $browser.button(text: botao, index: 2).attribute_value('aria-disabled') == 'false'
                $browser.button(text: botao, index: 2).click
                sleep 3
            else
                result = false
            end

        when "valor m\u00EDnimo por opera\u00E7\u00E3o"
            if $browser.button(text: botao, index: 3).attribute_value('aria-disabled') == 'false'
                $browser.button(text: botao, index: 3).click
                sleep 3
            else
                result = false
            end

        when 'ramos de atividade restritos'
            if !$browser.span(class: 'ui-panel-title', text: 'Ramos de atividade restritos').exist?
                result = false
            elsif $browser.span(class: 'ui-panel-title', text: 'Ramos de atividade restritos').parent.parent.button(text: botao).attribute_value('aria-disabled') == 'false'
                # $browser.button(text: botao, index: 4).click
                $browser.span(class: 'ui-panel-title', text: 'Ramos de atividade restritos').parent.parent.button(text: botao).click
                sleep 3
            else
                result = false
            end

        when "cart\u00E3o n\u00E3o presente"
            if $browser.button(text: botao, index: 5).attribute_value('aria-disabled') == 'false'
                $browser.button(text: botao, index: 5).click
                sleep 3
            else
                result = false
            end

        when 'editar dados', 'fidc'
            if $browser.button(text: botao, index: 6).attribute_value('aria-disabled') == 'false'
                $browser.button(text: botao, index: 6).click
                sleep 3
            else
                result = false
            end
        else
            raise('informar frame valido')
        end

        @@utils.aguardar_loading
        $encoded_img = $browser.driver.screenshot_as(:base64)
        result
    end

    def alterar_status_cadastro(valor)
        Watir::Wait.until { $browser.div(id: /cmb_account_status_panel/).exists? }
        $browser.execute_script('arguments[0].click()', $browser.div(id: /cmb_account_status_panel/).li(text: valor))
        @@utils.aguardar_loading
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def verificar_status_cadastro
        Watir::Wait.until { $browser.input(id: /cmb_account_status_focus/).exists? }
        if $browser.input(id: /cmb_account_status_focus/).attribute_value('disabled') == 'true'
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        else
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        end
    end

    def verificar_valor_lista_motivoDoFechamento(valor)
        if $browser.div(id: /cmb_closure_reason_panel/).li(text: valor).exists?
            $browser.execute_script('arguments[0].click()', $browser.div(id: /cmb_closure_reason_panel/).li(text: valor))
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        else
            $browser.div(id: /cmb_closure_reason/).span(class: /icon-triangle/).click
            sleep 1
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        end
    end

    def verificar_status_bloqueio
        Watir::Wait.until { $browser.input(id: /blockPayment_focus/).exists? }
        if $browser.input(id: /blockPayment_focus/).attribute_value('disabled') == 'true'
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        else
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        end
    end

    def action_dadosProp(acao)
        sleep 2
        case acao
        when 'Editar'
            Watir::Wait.until { $browser.span(class: /icoEdit/) }
            if $browser.span(class: /icoEdit/).parent.attribute_value('aria-disabled') == 'true'
                $encoded_img = $browser.driver.screenshot_as(:base64)
                return false
            else
                $browser.span(class: /icoEdit/).click
                $browser.span(text: /^Editar/).wait_until_present
                $encoded_img = $browser.driver.screenshot_as(:base64)
                return true
            end
        end
    end

    def verificar_campo_razaoSocial
        Watir::Wait.until { $browser.input(id: /legalNameId/).exists? }
        sleep 1
        statusRazao = $browser.input(id: /legalNameId/).attribute_value('aria-disabled')
        if statusRazao == 'true'
            return false
        else
            return true
        end
    end

    def verificar_campo_site
        Watir::Wait.until { $browser.input(id: /input_BoardingMerchantEditBeanNewsite/).exists? }
        sleep 1
        statusRazao = $browser.input(id: /input_BoardingMerchantEditBeanNewsite/).attribute_value('aria-disabled')
        if statusRazao == 'true'
            return false
        else
            return true
        end
    end

    def verificar_campo_codigoAmex
        # Watir::Wait.until { $browser.input(id: /amexID/).exists? }
        sleep 1
        statusCampo = $browser.input(id: /amexId/).attribute_value('aria-disabled') if $browser.input(id: /amexId/).exists? rescue 'false'
        $encoded_img = $browser.driver.screenshot_as(:base64)
        if statusCampo == 'true'
            return false
        else
            return true
        end
    end

    def action_dadosContato(botao)
        case botao
        when 'Editar'
            Watir::Wait.until { $browser.button(name: /btn_info_.*_edit/, index: 0).exists? }
            sleep 1
            if $browser.button(name: /btn_info_.*_edit/, index: 0).attribute_value('aria-disabled') == 'true'
                $encoded_img = $browser.driver.screenshot_as(:base64)
                return false
            else
                $browser.button(name: /btn_info_.*_edit/, index: 0).click
                sleep 3
                $encoded_img = $browser.driver.screenshot_as(:base64)
                return true
            end
        end
    end

    def validar_Tela_pesquisa
        @@utils.aguardar_loading
        sleep 1
        if $browser.span(text: /Dados da (P|p)esquisa/).exists?
            return true
        else
            return false
        end
    end

    def selecionar_bandeira_filtro(bandeira)
        $browser.div(id: /mnuCardBrand/).wait_until_present
        sleep 1
        # $browser.div(id: /mnuCardBrand/).span(class: /ui-icon-triangle-1-s/).click
        $browser.execute_script('arguments[0].click()',  $browser.div(id: /mnuCardBrand/).span(class: /ui-icon-triangle-1-s/))
        $browser.execute_script('arguments[0].click()', $browser.li(text: /#{bandeira}/, index: 0))
        sleep 1
        @@utils.aguardar_loading
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def selecionar_primeiro_item_busca
        $browser.tbody(id: /dtbVan_data/).span(class: /icoView/, index: 0).wait_until_present

        $browser.tbody(id: /dtbVan_data/).span(class: /icoView/, index: 0).click
    end

    def verificar_edicao_bloqueio(motivo)
        @@utils.aguardar_loading
        $browser.tbody(id: /BlockingClient/).wait_until_present
        sleep 1
        statusbtn = $browser.tbody(id: /BlockingClient/).td(text: /#{motivo}/).parent.button(index: 0).attribute_value('aria-disabled')
        if statusbtn == 'true'
            return false
        else
            return true
        end
    end

    def click_primeiro_valorDia
        $browser.a(id: /link_cash_in_today/, index: 0).wait_until_present
        $browser.a(id: /link_cash_in_today/, index: 0).click
        @@utils.aguardar_loading
    end

    def click_valor_movimentacao(item, dia = 'hoje')
        sleep 1
        case dia
        when 'ontem'
            dia = 'yesterday'
        when 'hoje'
            dia = 'today'
        when 'atual'
            dia = 'current'
        else
            raise("parametro dia inv\u00E1lido")
        end

        sleep 3
        case item
        when 'vendas'
            $browser.a(id: /form:tabVisao:link_cash_in_#{dia}/).wait_until_present
            $browser.a(id: /form:tabVisao:link_cash_in_#{dia}/).click
        when 'ajustes financeiros'
            $browser.a(id: /form:tabVisao:link_cash_in_#{dia}/).wait_until_present
            $browser.a(id: /form:tabVisao:link_cash_in_#{dia}/).click
        end
        sleep 2
        @@utils.aguardar_loading
        sleep 1
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def conta_truncada?
        valor = $browser.tbody(id: /MerchantBanks_data/).td(index: 3).text

        if (valor.include? 'x') || (valor.include? 'X')
            return true
        else
            return false
        end
    end
end
