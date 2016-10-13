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

        when 'Custos_antecipaçãoVendas'
            i = 0
            pagina = 'Custos'

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
        when 'Reprocessamento_monitoraçãoFuncional'
            i = 0
            pagina = 'Reprocessamento'
        when 'controleDeAcaoDeChargeback'
            i = 0
            pagina = "Controle de a\u00E7\u00E3o de chargeback"
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
        sleep 1
        # Watir::Wait.until { $browser.button(text: botao).exists? }
        if $browser.button(text: botao).exist?
            sleep 2
            $browser.button(text: botao, index: 0).click
            result = true
        else
            result = false
        end
        sleep 2
        aguardar_loading
        $encoded_img = $browser.driver.screenshot_as(:base64)
        result
    end

    def acessar_aba(aba)
        sleep 2

        if $browser.li(text: aba).attribute_value('class').include? 'ui-state-disabled'
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        else
            Watir::Wait.until { $browser.li(text: aba).exist? }
            if $browser.li(text: aba).present?
                $browser.li(text: aba).click
                sleep 6
                $encoded_img = $browser.driver.screenshot_as(:base64)
                return true
            else
                $browser.execute_script('arguments[0].click()', $browser.li(text: aba))
                sleep 6
                $encoded_img = $browser.driver.screenshot_as(:base64)
                return true
            end
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

    def validar_botao(botao, i = 0, click = true)
        Watir::Wait.until { $browser.button(text: botao, index: i).exists? }
        if $browser.button(text: botao, index: i).attribute_value('aria-disabled') == 'true'
            result = false
        else
            $browser.button(text: botao, index: i).click if click
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

    def clicar_botao_acao(acao, i = 0)
        sleep 3
        case acao
        when 'Visualizar'
            acao = 'icon[_]?view|btn_detail|button_RSR|button_Jvn|link_SMe'
        when 'Editar'
            acao = 'ico[_]?edit|btn_edit|button_W33|button_9Mi|tabRejectionCapture:resultTableTreat:0:j_idt422|j_idt211|link_h4Q'
        when 'Editar Dados de contato'
            acao = 'btn_info_contact_edit'
        when 'Remover'
            acao = 'ico[_]?cancel|btn_cancel'
        when 'cancelar'
            acao = 'formConsultationSalesAnticipationOperations:latestTransactionsTable:2:btn_cancel'
        when 'Aprovar'
            acao = 'button_FPi'
        when 'editar - antecipação de vendas - custos'
            acao = 'tabCosts:table_captation_costs:0:buttonEditId'
        when 'Visualizar - operacoes realizadas'
            acao = 'formConsultationSalesAnticipationOperations:latestTransactionsTable:0:btn_detail'
        when 'visualizar - detalhe disponivel'
            acao = 'tabOperationAnticipation:button_Arv_msg_arvprepaymentoperation_u57'
        when 'Atribuir para' # Bonequinho - Tela Fila de Trabalho
            acao = 'link_ZTw'
        when 'Atribuir' # Atribuir - Tela Fila de Trabalho
            acao = 'link_OXZ'
        when 'Liberar' # Liberar - Tela Fila de Trabalho
            acao = 'link_VY9'
        when 'detalhar - reprocessamento de vendas'
            acao = 'tab_reprocessing_sales:searchReprocessingSales:reprocessingSales:0:image_w9Z'
        when 'atribuir'
            acao = 'flowForm:workQueueList:0:link_ZTw'
        when 'cancelar - coluna acao'
            acao = 'formArvConsultAntecipationScheduledRegistered:latestTransactionsTable:0:btn_cancel'
        when 'Exportar'
            acao = 'tabRejectionCapture:j_idt261|button_Settlement_msg_buttonexport_'
        when 'Reverter'
            acao = 'include_reversion_link'
        when 'Cancelamento'
            acao = 'cancellation_link'
        when 'editar - CUSTO OPERACIONAL - custos'
            acao = '0:button_0Tn'
    end

        sleep 2
        when 'Visualizar Planos do cliente'
            acao = 'button_ZeM'
        when 'Visualizar Maquinas do cliente'
            acao = '3:button_ACW'
        when 'Remover Desconto vigente/programado'
            acao = 'icoDelete'
            i = 1
        end

        sleep 3
        if $browser.a(id: /#{acao}$/).exist?
            sleep 2
            $browser.a(id: /#{acao}$/).click
            result = true
        elsif $browser.button(id: /#{acao}$/).exist?
            sleep 2
            $browser.button(id: /#{acao}$/).click
            result = true
        elsif $browser.img(id: /#{acao}$/).exist?
            sleep 2
            $browser.img(id: /#{acao}$/).click
            result = true
        elsif $browser.span(class: /#{acao}/, index: i).parent.exist?
            sleep 2
            $browser.span(class: /#{acao}/, index: i).parent.click
            result = true
        else
            result = false
        end
        sleep 1
        aguardar_loading
        sleep 2
        $encoded_img = $browser.driver.screenshot_as(:base64)

        result
      end

    def validar_frame(texto)
        sleep 6
        result = if $browser.td(title: texto).exist? || $browser.a(text: texto).exist? || $browser.div(text: texto).exist? || $browser.th(text: texto).exist? || $browser.label(text: texto).exist? || $browser.tr(text: texto).exist? || $browser.span(text: texto).exist?
                     true
                 else
                     false
                 end

        sleep 3
        $encoded_img = $browser.driver.screenshot_as(:base64)

        result
    end

    def preencher_campo_input(valor, campo)
        case campo.downcase
        when "t\u00F3pico de manuten\u00E7\u00E3o"
            campo = ':topicMaintenanceId_input'
        when "subt\u00F3pico de manuten\u00E7\u00E3o"
            campo = ':subTopicMaintenanceId_input'
        when 'banco'
            campo = 'input_ClearingConsignmentsControlBeanbank_input'
        when 'protocolo'
            campo = 'input_ClearingSefazDemandListBeanfilterprotocolNumber'
        when 'banco - acumulo diario'
            campo = 'tabAccumulatedDaily:bancoAssociation_input'
        when 'numero do cliente individual'
            campo = 'tabProduct:mskClientIdentificationNumber'
        when 'cnpj'
            campo = 'tabProduct:mskClientIdentificationNumber'
        when 'raiz do cnpj'
            campo = 'tabProduct:mskClientIdentificationNumber'
        when 'cpf'
            campo = 'tabProduct:mskClientIdentificationNumber'
        when 'previsto - incluir'
            campo = 'tabCosts:input_ArvCostCaptationBeancostCaptationSelectedpcCdiForecast_pPP'
        when 'previsto - editar'
            campo = 'tabCosts:input_ArvCostCaptationBeancostCaptationSelectedpcCdiForecast'
        when 'numero do cliente - excecao'
            campo = 'tabViewExceptionId:tabViewAbsentCard_id:txtSearchClientId'
        when 'preco - antecipacao avulsa'
            campo = 'tabOperationAnticipation:inputValNegociateId'
        when 'numero do cliente - operacoes realizadas'
            campo = 'formConsultationSalesAnticipationOperations:inputClientNumberId'
        when 'numero da operacao - operacoes realizadas'
            campo = 'formConsultationSalesAnticipationOperations:mskMassiveProtocol'
        when 'numero do cliente - antecipacao programadas cadastradas'
            campo = 'formArvConsultAntecipationScheduledRegistered:inputClientNumberId'
        when 'numero da solicitacao - reprocessamento de vendas'
            campo = 'tab_reprocessing_sales:searchReprocessingSales:input_SearchReprocessingSalesBeannuRequestReentry'
        when 'numero da solicitacao - cancelamento e reversão de vendas'
            campo = 'tab_request:formRequest:cancellation_number'
        when 'Preço base - % CDI'
            campo = 'tabFlexiblePrecification:tablePriceBaseStep1_id:0:txtCdiStep1_id_input'
        when 'inicio da vigencia'
            campo = 'tabFlexiblePrecification:dtStartCurrentStep1_id_input'
        when 'numero da solicitacao - ajustes financeiros'
            campo = 'tab_regularization:input_SearchRegularizationBeansearchRegularizationDTOrequestNumber'
        when 'data de rejeicao - de'
            campo = 'tabRejectionCapture:initialRejectionDateTreatment_input|tabRejectionCapture:initialRejectionDate_input'
        when 'data de rejeicao - ate'
            campo = 'tabRejectionCapture:finalRejectionDateTreatment_input|tabRejectionCapture:finalRejectionDate_input'
        when 'data programada - de'
            campo = 'j_idt196:dtEffectiveOf_input'
        when 'data programada - ate'
            campo = 'j_idt196:dtEffectiveUntil_input'
        when 'data de liquidação - tratamento'
            campo = 'formModal:dateSettlementTreatment_input'
        when 'codigo da venda'
            campo = 'tab_request:formRequest:sale_code'
        when 'n do cliente -reentrada de venda'
            campo = 'tab_reprocessing_sales:client_number'
        when 'codigo de autorização-reentrada de venda'
            campo = 'tab_reprocessing_sales:input_IncludeReprocessingSalesWithoutLogBeandtoauthorizationCode'
        when 'n do cartao aberto-reentrada de venda'
            campo = 'tab_reprocessing_sales:input_IncludeReprocessingSalesWithoutLogBeandtocardOpen'
        when 'data da autorizacao-reentrada de venda'
            campo = 'tab_reprocessing_sales:authorization_date_input'
        when 'valor da autorizacao-reentrada de venda'
            campo = 'tab_reprocessing_sales:input_IncludeReprocessingSalesWithoutLogBeanauthorizationValue'
        when 'tipo de pagamento-reentrada de venda'
            campo = 'tab_reprocessing_sales:input_IncludeReprocessingSalesWithoutLogBeanpaymentTypeSelected_input'
        when 'terminal-reentrada de venda'
            campo = 'tab_reprocessing_sales:input_IncludeReprocessingSalesWithoutLogBeandtoterminal'
        when 'nsu-reentrada de venda'
            campo = 'tab_reprocessing_sales:input_IncludeReprocessingSalesWithoutLogBeandtonsu'
        when 'comentario-reentrada de venda'
            campo = 'tab_reprocessing_sales:input_IncludeReprocessingSalesWithoutLogBeandtoobservations'
        when 'pesquisa - numero do cliente - cancelamento e reversao de vendas'
            campo = 'tab_request:formRequest:cancellation_number'
        when 'data autorizacao inicio-cancelamento reversao de vendas'
            campo = 'tab_request:formTransactionForCancellation:initial_date_input'
        when 'data autorizacao fim-cancelamento reversao de vendas'
            campo = 'tab_request:formTransactionForCancellation:final_date_input'
        when 'n do cliente -cancelamento reversao de vendas'
            campo = 'tab_request:formTransactionForCancellation:input_SearchTransactionForCancellationBeandtonuCustomer'
        when 'nsu-cancelamento reversao de vendas'
            campo = 'tab_request:formTransactionForCancellation:input_SearchTransactionForCancellationBeandtonuSerialSequenceTransaction'
        when 'terminal-cancelamento reversao de vendas'
            campo = 'tab_request:formTransactionForCancellation:input_SearchTransactionForCancellationBeandtonuTerminal'
        when 'valor cancelamento-cancelamento reversao de vendas'
            campo = 'tab_request:input_IncludeRequestCancellationSaleBeanrefundValue'
        when 'mesa-custo-operacional'
            campo = 'input_ArvCostOperatingBeancostOperatingSelectedvlCostTable'
        when 'data_inicio_pesq_avan_extrato'
            campo = 'tabGeralPesquisaAvancada:formAutorizacaoMultiFiltros:dataDeTran_input'
        when 'data_fim_pesq_avan_extrato'
            campo = 'tabGeralPesquisaAvancada:formAutorizacaoMultiFiltros:dataAteTran_input'
        when '4_dig_cartao_pesq_avan_extrato'
            campo = 'tabGeralPesquisaAvancada:formAutorizacaoMultiFiltros:j_idt320'
        when 'Banco - Envio de Debitos ao Cliente'
            campo = 'tab_bebit_balance:formInclude:input_IncludeCuttingDebitBalanceSendBeanmodelvalueDomicileBank_input'
        end

        $browser.text_field(id: /#{campo}$/, index: 0).when_present.set valor
        aguardar_loading
        $browser.send_keys :tab
        aguardar_loading

        if $browser.text_field(id: /#{campo}$/, index: 0).value != ''
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        else
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        end
    end

    def selecionar_valor_combobox(id, valor, i = 0)
        Watir::Wait.until { $browser.div(id: /#{id}/).exists? }
        $browser.execute_script('arguments[0].click()', $browser.div(id: /#{id}/, index: i).li(text: valor))
        aguardar_loading
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def selecionar_valor_combobox_label(valor)
        if $browser.div(id: 'j_idt194:indecesMenu').exist?
            $browser.div(id: 'j_idt194:indecesMenu').click
            $browser.li(text: valor).click
            sleep 1
            result = true
        else
            result = false
        end
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def informar_periodo(de, ate)
        2.times { $browser.text_field(id: /[I|i]nitialDate_input$/).set de }
        sleep 1
        2.times { $browser.text_field(id: /[F|f]inalDate_input$/).set ate }
        sleep 1
        $browser.send_keys :tab
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def validar_link(texto, i = 0)
        sleep 1
        if $browser.a(text: texto, index: i).present?
            $browser.a(text: texto, index: i).click
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        else
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        end
    end

    def selecionar_radio_button(radio)
        if $browser.label(text: radio, index: 0).exist?
            $browser.label(text: radio, index: 0).click
            sleep 2
            result = true
        else
            result = false
        end
        sleep 2
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end

    def validar_btn_exportar(botao)
        Watir::Wait.until { $browser.button(text: botao).exists? }
        if $browser.button(text: botao, aria_disabled: 'false').exist?
            $encoded_img = $browser.driver.screenshot_as(:base64)
            result = true
        else
            $encoded_img = $browser.driver.screenshot_as(:base64)
            result = false
        end
    end
end
