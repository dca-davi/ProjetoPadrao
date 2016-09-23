class Utils
    def visit
        $browser.goto URL.to_s

        while $browser.a(id: 'overridelink').exists?
            $browser.a(id: 'overridelink').click
        end
    end

    def fazer_login
        $browser.textarea(id: 'IDToken1').set USER.to_s
        $browser.textarea(id: 'IDToken2').set PASS.to_s
        $browser.button(name: 'Login.Submit').click
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def acessar_pagina(pagina)
        i = 0
        case pagina
        when 'Geral_antecipaçãoVendas'
            i = 0
            pagina = 'Geral'

        when 'Geral_prazoFlexivel'
            i = 1
            pagina = 'Geral'

        when 'Precificação_antecipaçãoVendas'
            i = 0
            pagina = 'Precificação'

        when 'Precificação_prazoFlexivel'
            i = 1
            pagina = 'Precificação'

        when 'Exceção_antecipaçãoVendas'
            i = 0
            pagina = "Exce\u00E7\u00E3o"

        when 'Exceção_prazoFlexivel'
            i = 1
            pagina = "Exce\u00E7\u00E3o"
        end

        sleep 2
        Watir::Wait.until { $browser.a(text: pagina, index: i).exists? }
        if $browser.a(text: pagina, index: i).attribute_value('onclick') == 'return false;'
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        else
            sleep 1
            $browser.execute_script('arguments[0].click()', $browser.a(text: pagina, index: i))
            sleep 2
            aguardar_loading
            sleep 2
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        end
    end

    def tem_direito?(nome_direito)
        book = Spreadsheet.open('features\direitoXperfil_V1.xls')

        sheet1 = book.worksheet 0

        for count in 1...sheet1.column_count
            perfil = sheet1.cell(0, count)
            perfil_index = count
            compare = perfil.casecmp($perfil)
            break if compare.zero?
            raise('Perfil nao encontrado') if count == (sheet1.column_count - 1)
        end

        for count in 1...sheet1.row_count
            direito = sheet1.cell(count, 0)
            direito_index = count
            break if direito.casecmp(nome_direito).zero?
            raise('Direito nao encontrado') if count == (sheet1.row_count - 1)
        end

        if sheet1.cell(direito_index, perfil_index).nil?
            return false
        else
            return true
        end

        #     compare = sheet1.cell(direito_index, perfil_index).casecmp('x')
        #     if  compare == 0
        #       return true
        #     else
        #       return false
        #     end
    end

    def aguardar_loading
        count = 0
        sleep 1
        if $browser.div(id: 'statusDialogWaiting').exists?
            begin
                while $browser.div(id: 'statusDialogWaiting').visible? && count < 40
                    sleep 1
                    count += 1
                end
            rescue
            end
        end
        sleep 1
    end

    def verificar_direito_star(nome_direito, direito_planilha)
        url = /.*web\//.match($browser.url).to_s + 'common/teste-osb.xhtml'
        $browser.goto url
        $browser.button(text: 'Show OpenAM Granted Authorities').when_present.click
        sleep 1
        grants = /^Granted.*/.match($browser.div(text: /^Granted Authorities/).text)
        grants = grants.to_s.sub(/^.*\:/, '').strip
        grants = grants.split(/,\s*/)
        $encoded_img = $browser.driver.screenshot_as(:base64)

        if !grants.include?("RIGHT_#{nome_direito}") && direito_planilha
            return "O perfil utilizado não esta condizente com a planilha de direitos! / Direito: #{nome_direito}"
        elsif grants.include?("RIGHT_#{nome_direito}") && !direito_planilha
            return "O perfil utilizado não esta condizente com a planilha de direitos! / Direito: #{nome_direito}"
        end
        2.times { $browser.back }
        nil
    end

    def clicar_botao_tela(botao)
        # result = true
        sleep 2
        Watir::Wait.until { $browser.button(text: botao).exists? }
        if $browser.button(text: botao).exists?
            sleep 2
            $browser.button(text: botao).click
            result = true
        else
            result = false
        end
        sleep 6
        $encoded_img = $browser.driver.screenshot_as(:base64)
        result
    end

    def acessar_aba(aba)
        sleep 2
        if $browser.li(text: aba).attribute_value('class').include? 'ui-state-disabled'
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        else
            $browser.li(text: aba).wait_until_present
            $browser.li(text: aba).click
            sleep 3
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        end
    end

    def validar_acesso_aba(aba)
        sleep 2
        aguardar_loading
        sleep 2
        Watir::Wait.until { $browser.a(text: aba).exists? }
        if $browser.li(text: aba).attribute_value('aria-expanded') == 'true'
            return true
        else
            return false
        end
    end

    def validar_botao(botao)
        Watir::Wait.until { $browser.button(text: botao).exists? }
        if $browser.button(text: botao).attribute_value('aria-disabled') == 'true'
            result = false
        else
            $browser.button(text: botao).click
            result = true
        end
        sleep 3
        $encoded_img = $browser.driver.screenshot_as(:base64)
        result
    end

    def verificar_label(label)
        sleep 2
        if $browser.label(text: label).present?
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        else
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        end
    end

    def alterar_hierarquia(hierarquia)
        Watir::Wait.until { $browser.div(id: /cmbHierarchyLevel_panel/).exists? }
        $browser.execute_script('arguments[0].click()', $browser.div(id: /cmbHierarchyLevel_panel/).li(text: hierarquia))
        aguardar_loading
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def clicar_botao_acao(acao)
        sleep 2
        if acao == 'Visualizar'
            acao = 'icon[_]?view|btn_detail'
        elsif acao == 'Editar'
            acao = 'ico[_]?edit|btn_edit'
        elsif acao == 'Remover'
            acao = 'ico[_]?cancel|btn_cancel'
        end
        sleep 2
        if $browser.a(id: /#{acao}$/).exist?
            sleep 2
            $browser.a(id: /#{acao}$/).click
            result = true
        elsif $browser.button(id: /#{acao}$/).exist?
            sleep 2
            $browser.button(id: /#{acao}$/).click
            result = true
        else
            result = false
        end
        sleep 3
        $encoded_img = $browser.driver.screenshot_as(:base64)

        result
      end

    # Validar Frames >>> Lucas >>>
    def validar_frame(texto)
        sleep 2
        result = if $browser.a(text: texto).exist? || $browser.div(text: texto).exist?
                     true
                 else
                     false
                 end

        sleep 3
        $encoded_img = $browser.driver.screenshot_as(:base64)

        result
    end
    # Lucas <<<

    def preencher_campo_input(valor, campo)
        case campo.downcase
        when "t\u00F3pico de manuten\u00E7\u00E3o"
            campo = 'topicMaintenanceId_input'
        when "subt\u00F3pico de manuten\u00E7\u00E3o"
            campo = 'subTopicMaintenanceId_input'
        end

        $browser.text_field(id: /:#{campo}$/).when_present.set valor
        aguardar_loading
        $browser.send_keys :tab
        aguardar_loading

        if $browser.text_field(id: /:#{campo}$/).value != ''
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        else
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        end
    end

    def selecionar_combo_box(opcao, combo_default)
        sleep 1
        if $browser.label(text: combo_default).exist?
            sleep 1
            $browser.label(text: combo_default).click
            result = true
        else
            result = false
        end

        if $browser.li(text: opcao).exist?
            sleep 1
            $browser.li(text: opcao).click
            result = true
        else
            result = false
        end
        sleep 3
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def selecionar_valor_combobox(id, valor, i = 0)
        Watir::Wait.until { $browser.div(id: /#{id}/).exists? }
        $browser.execute_script('arguments[0].click()', $browser.div(id: /#{id}/, index: i).li(text: valor))
        aguardar_loading
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def informar_periodo(de, ate)
        2.times { $browser.text_field(id: /initialDate_input$/).set de }
        sleep 1
        2.times { $browser.text_field(id: /finalDate_input$/).set ate }
        sleep 1
        $browser.send_keys :tab
    end
end
