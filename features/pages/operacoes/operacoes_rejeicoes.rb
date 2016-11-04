class Operacoes_Rejeicoes
    @@utils = Utils.new

    def selecione_combo(frame, item)
        case frame
        when 'Situação da solicitação'
            if $browser.div(id: 'cmbRequestSituation').exist?
                $browser.div(id: 'cmbRequestSituation').click
                sleep 1
                result = true
            else
                result = false
            end

        when 'Tipo de solicitação'
            if $browser.div(id: 'cmbRequestType_label').exist?
                $browser.div(id: 'cmbRequestType_label').click
                sleep 1
                result = true
            else
                result = false
          end

        # Tela de Operacoes-Hierarquia>>>
        when 'Pesquisar grupo por'
            if $browser.div(id: 'tabProduct:cmbSearchClientBy_label').exist?
                $browser.div(id: 'tabProduct:cmbSearchClientBy_label').click
                sleep 1
                result = true
            else
                result = false
            end
          # Tela de Operacoes-Hierarquia<<<
      end

        case item
        when 'Rejeitada'
            if $browser.li(text: 'Rejeitada').exist?
                $browser.li(text: 'Rejeitada').click
                sleep 1
                result = true
            else
                reult = false
            end

        when 'Concluída'
            if $browser.li(text: 'Rejeitada').exist?
                $browser.li(text: 'Rejeitada').click
                sleep 1
                result = true
            else
                result = false
            end

            # Tela de Operacoes-Hierarquia>>>
        when 'Nº do cliente individual'
            if $browser.li(text: "N\u00BA do cliente individual").exist?
                $browser.li(text: "N\u00BA do cliente individual").click
                sleep 1
                result = true
            else
                result = false
            end

        when 'Raiz do CNPJ'
            if $browser.li(text: 'Raiz do CNPJ').exist?
                $browser.li(text: 'Raiz do CNPJ').click
                sleep 1
                result = true
            else
                result = false
            end

        when 'CNPJ'
            if $browser.li(text: 'CNPJ').exist?
                $browser.li(text: 'CNPJ').click
                sleep 1
                result = true
            else
                result = false
            end

        when 'CPF'
            if $browser.li(text: 'CPF').exist?
                $browser.li(text: 'CPF').click
                sleep 1
                result = true
            else
                result = false
            end
                # Tela de Operacoes-Hierarquia<<<
            end
        sleep 2
        $encoded_img = $browser.driver.screenshot_as(:base64)
      end

    def clicar_botao_pequisar_captura_tratamento(botao)
        if $browser.button(text: botao, index: 1).exist?
            $browser.button(text: botao, index: 1).click
            sleep 2
            result = true
        else
            result = false
        end
        sleep 1
        @@utils.aguardar_loading
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def clicar_botao_input
        if $browser.button(name: 'tabRejectionCapture:j_idt261', index: 0).exist?
            $browser.button(name: 'tabRejectionCapture:j_idt261', index: 0).click
            result = true
        else
            result = false
            end
        sleep 5
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def selecione_combo_box(combo, opcao)
        case combo
        when 'Bandeira'
            if $browser.div(id: 'formRejectedFlag:cardAssociationCombo_label').exist?
                $browser.div(id: 'formRejectedFlag:cardAssociationCombo_label').click
                sleep 1
                result = true
            else
                result = false
            end
        end

        case opcao
        when 'Elo'
            if $browser.li(text: 'Elo').exist?
                $browser.li(text: 'Elo').present?
                $browser.li(text: 'Elo').visible?
                sleep 2
                $browser.li(text: 'Elo').click
                sleep 1
                result = true
            else
                result = false
            end
            sleep 2
            $encoded_img = $browser.driver.screenshot_as(:base64)

        when 'Mastercard'
            if $browser.li(text: 'Mastercard').exist?
                sleep 2
                $browser.li(text: 'Mastercard').click
                sleep 1
                result = true
            else
                result = false
            end
            sleep 2
            $encoded_img = $browser.driver.screenshot_as(:base64)

        when 'Visa'
            if $browser.li(text: 'Visa').exist?
                sleep 2
                $browser.li(text: 'Visa').click
                sleep 1
                result = true
            else
                result = false
            end

            sleep 2
            $encoded_img = $browser.driver.screenshot_as(:base64)
        end
    end

    def selecionar_combobox_depositos_debitos(valor)
        if $browser.div(id: 'tab_deposits_debits:formReport:cardAssociation_label').exist?
            $browser.div(id: 'tab_deposits_debits:formReport:cardAssociation_label').click
            $browser.li(text: valor).click
            sleep 1
            result = true
        else
            result = false
        end
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def selecionar_combobox_depositos_debitos_pop_up(valor)
        if $browser.div(id: 'tab_deposits_debits:formModal:combo_OperationsTreatRejectedManualBeanmodelreasonLowerManualValue_label').exist?
            $browser.div(id: 'tab_deposits_debits:formModal:combo_OperationsTreatRejectedManualBeanmodelreasonLowerManualValue_label').click
            $browser.li(text: valor).click
            sleep 1
            result = true
        else
            result = false
        end
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def preencher_campo_data_inicial(data)
        if $browser.input(id: 'formRejectedFlag:initialRejectDate_input').exist?
            $browser.input(id: 'formRejectedFlag:initialRejectDate_input').send_keys :clear
            $browser.input(id: 'formRejectedFlag:initialRejectDate_input').send_keys(data)
            $browser.send_keys :tab
            sleep 1
            result = true
        else
            result = false
        end
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def preencher_campo_data_final(data)
        if $browser.input(id: 'formRejectedFlag:finalRejectDate_input').exist?
            $browser.input(id: 'formRejectedFlag:finalRejectDate_input').send_keys :clear
            $browser.input(id: 'formRejectedFlag:finalRejectDate_input').send_keys(data)
            $browser.send_keys :tab
            sleep 1
            result = true
        else
            result = false
        end
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end
end
