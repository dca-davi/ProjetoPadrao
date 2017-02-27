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
        when 'Precificação_Trava'
            i = 2
            pagina = 'Precificação'
        when 'Exceção_antecipaçãoVendas'
            i = 0
            pagina = "Exce\u00E7\u00E3o"

        when 'Exceção_prazoFlexivel'
            i = 1
            pagina = "Exce\u00E7\u00E3o"
        when 'Reprocessamento_monitoraçãoFuncional'
            i = 1
            pagina = 'Reprocessamento'
        when 'controleDeAcaoDeChargeback'
            i = 0
            pagina = "Controle de a\u00E7\u00E3o de chargeback"
        when 'Trava_Excecao'
            i = 2
            pagina = "Exceção"
        when 'Goldlist_MDR'
            i = 1
            pagina = 'Goldlist'
        when 'Pesquisa Avançada'
            i = 0
            pagina = "Pesquisa avançada"
        end

        # sleep 2
        # Watir::Wait.until { $browser.a(text: pagina, index: i).exists? }
        aguardar_loading
        if !$browser.a(text: pagina, index: i).exists?
            return false

        elsif $browser.a(text: pagina, index: i).attribute_value('onclick') == 'return false;'
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false

        else
            # sleep 1
            $browser.execute_script('arguments[0].click()', $browser.a(text: pagina, index: i))
            # $browser.execute_script('arguments[0].click()', $browser.a(text: pagina, index: i))
            # sleep 2
            aguardar_loading
            # sleep 2
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
        url = /.*web[ti]*\//.match($browser.url).to_s + 'common/teste-osb.xhtml'
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
        result = true
        aguardar_loading
        if $cenario_name=="CT.SEGINFO - [AUT] CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAO_CARTAONAOPRESENTE_EDITAR" && $browser.button(text: botao, index: 1).exist?
            $browser.execute_script('arguments[0].click()', $browser.button(text: botao, index: 1))
            result =true
        elsif $browser.button(text: botao, index: 0).present?
            $browser.button(text: botao, index: 0).click
            result = true
        elsif $browser.button(text: botao, index: 1).present?
            $browser.button(text: botao, index: 1).click
            result = true
        else
            result = false
        end
        aguardar_loading
        $encoded_img = $browser.driver.screenshot_as(:base64)
        result
    end

    def acessar_aba(aba, i = 0)
        aguardar_loading
        case aba
        when 'Incluir_PrazoFlexivel'
            aba = 'Incluir'
            i = 0
        when 'Parametros - PRO ANTECIPACAO DE VENDAS' #
            aba = 'Parâmetros'
            i = 1
        when 'Incluir regra de liberação'
            aba = 'INCLUIR'
            i = 1
        when 'Incluir Cobrança'
            aba = 'INCLUIR'
            i = 1
        end

        if $cenario_name=="CT.SEGINFO - [AUT] CONFIGURACOES_ANTECIPACAOVENDAS_EXCECAO_CARTAONAOPRESENTE_EDITAR"
            i = 1 if aba=="Incluir"
        end

        if !$browser.li(text: aba, index: i).exist?
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false

        elsif $browser.li(text: aba, index: i).attribute_value('class').include? 'ui-state-disabled'
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        else

            if $browser.li(text: aba, index: i).present?
                until $browser.li(text: aba, index: i).attribute_value("aria-expanded")=="true"
                    $browser.execute_script('arguments[0].click()', $browser.li(text: aba, index: i))
                end
                aguardar_loading
                $encoded_img = $browser.driver.screenshot_as(:base64)
                return true
            else
                until $browser.li(text: aba, index: i).attribute_value("aria-expanded")=="true"
                    $browser.execute_script('arguments[0].click()', $browser.li(text: aba, index: i))
                end
                aguardar_loading
                $encoded_img = $browser.driver.screenshot_as(:base64)
                return true
            end
        end
    end

    def validar_acesso_aba(aba, i = 0)
        sleep 2
        case aba
        when 'Incluir_PrazoFlexivel'
            aba = 'Incluir'
            i = 0
        end
        aguardar_loading
        sleep 5
        # Watir::Wait.until { $browser.a(text: aba, index: /0|1/).exists? }
        if $browser.li(text: aba, index: i).attribute_value('aria-expanded') == 'true'
            return true
        elsif $browser.li(text: aba, index: i).attribute_value('aria-expanded') == 'true'
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
        aguardar_loading
        case acao

        when 'Tratar'
            acao = 'btnProcess'
        when 'Visualizar'
            acao = 'ico[n]?[_]?view|btn_detail|button_RSR|button_Jvn|link_SMe|0:button_rnw|0:btn_detail|label_lupaSelected'
        when 'Editar'
            acao = 'ico[_]?edit|btn_edit|button_W33|button_9Mi|tabRejectionCapture:resultTableTreat:0:j_idt422|buttonEditId|link_h4Q|button_edit'
        when 'Editar Dados de contato'
            acao = 'btn_info_contact_edit'
        when 'Editar - PRO ANTECIPACAO DE VENDAS'
            acao = 'tabProarv:frmCostProarvParam:table_costs_proarv_param:0:buttonEditId'
        when 'Remover'
            acao = 'ico[_]?cancel|btn_cancel|.*frmEligibilitySearch:dTEligibilityExceptions.*|.*frmGoldlistSearch:dTOfferRestrictions:0.*'
        when 'cancelar'
            acao = 'formConsultationSalesAnticipationOperations:latestTransactionsTable:.*:btn_cancel'
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
            acao = ''
            if $browser.div(id: /workQueueList/).table.exist?
                $browser.div(id: /workQueueList/).table.tbody.rows.each do | linha |
                    puts linha[0].text
                    raise "Tela Fila de Trabalho - Erro: Não existem demandas a serem exibidas" if linha[0].text == "Não existem demandas a serem atendidas."
                    acao = 'link_OXZ'
                    break
                end
            end

        when 'Liberar' # Liberar - Tela Fila de Trabalho
            if $browser.div(id: /workQueueList/).table.exist?
                $browser.div(id: /workQueueList/).table.tbody.rows.each do | linha |
                    puts linha[0].text
                    raise "Tela Fila de Trabalho - Erro: Não existem demandas a serem exibidas" if linha[0].text == "Não existem demandas a serem atendidas."
                    acao = 'link_VY9'
                    break
                end
            end
            
        when 'detalhar - reprocessamento de vendas'
            acao = 'tab_reprocessing_sales:searchReprocessingSales:reprocessingSales:0:image_w9Z'
        when 'atribuir'
            acao = 'flowForm:workQueueList:0:link_ZTw'
        when 'cancelar - coluna acao'
            acao = 'formArvConsultAntecipationScheduledRegistered:latestTransactionsTable:0:btn_cancel'
        when 'Exportar'
            acao = 'tabRejectionCapture:j_idt261|button_Settlement_msg_buttonexport_'
        when 'Reverter'
            acao = 'include_reversion_link|tab_reprocessing_sales:result_table_transaction:0:button_Ipb|tab_request:formRequest:request_results:0:include_reversion_link'
        when 'Cancelamento'
            acao = 'cancellation_link'
        when 'editar - CUSTO OPERACIONAL - custos'
            acao = '0:button_0Tn'
        when 'Visualizar Planos do cliente'
            acao = 'button_ZeM'
        when 'Visualizar Maquinas do cliente'
            acao = '0:button_ACW'
        when 'Visualizar Contrato'
            acao = 'tab_tabGeral:dtbServiceContract:0:btn_view_service_contract'
        when 'Remover Desconto vigente/programado'
            acao = 'icoDelete'
            i = 1
        when 'Salvar'
            acao = 'tabOperationAnticipation:tabScheduledAnticipation:btn_save'
        when 'Continuar'
            acao = 'j_idt248_next'
        when 'reprocessamento'
            acao = 'button_Ipb'
        when 'Editar endereço'
            acao = 'tab_tabGeral:frmAddress:merchantAddressID:0:btn_info_address_edit'
        end

        aguardar_loading
        if $browser.a(id: /#{acao}$/).exist?
            result = click_trata_exception?($browser.a(id: /#{acao}$/))
        elsif $browser.button(id: /#{acao}$/).exist?
            result = click_trata_exception?($browser.button(id: /#{acao}$/))
        elsif $browser.img(id: /#{acao}$/).exist?
            result = click_trata_exception?($browser.img(id: /#{acao}$/))
        elsif $browser.span(class: /#{acao}/, index: i).exist?
            result = click_trata_exception?($browser.span(class: /#{acao}/, index: i).parent)
        else
            result = false
        end
        aguardar_loading
        $encoded_img = $browser.driver.screenshot_as(:base64)

        result
      end

    def click_trata_exception?(elemento)
      begin
        elemento.click
        result = true
      rescue  Watir::Exception::ObjectDisabledException
        result = false
      end
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
        var_i = 0
        case campo.downcase
        when  'numero do cliente - consulta de transacoes'
            campo = 'tabPesquisaTransacao:formTransaction:input_SearchTransactionBeandtonuCustomer'
        when  'Data da Autorização - consulta de transacoes - de'
            campo = 'tabPesquisaTransacao:formTransaction:initial_date_input'
        when  'Data da Autorização - consulta de transacoes - ate'
            campo = 'tabPesquisaTransacao:formTransaction:final_date_input'
        when 'data de rejeicao - bandeira'
            campo = 'formRejectedFlag:initialRejectDate_input'
        when 'numero de parcelas - criterios de antecipacao - de'
            campo = 'tabOperationAnticipation:tabScheduledAnticipation:installmentsBegin'
        when 'numero de parcelas - criterios de antecipacao - ate'
            campo = 'tabOperationAnticipation:tabScheduledAnticipation:installmentsEnd'
        when "t\u00F3pico de manuten\u00E7\u00E3o"
            campo = ':topicMaintenanceId_input'
        when "subt\u00F3pico de manuten\u00E7\u00E3o"
            campo = ':subTopicMaintenanceId_input'
        when 'banco'
            campo = 'input_ClearingConsignmentsControlBeanbank_input|tab_bebit_balance:formInclude:input_IncludeCuttingDebitBalanceSendBeanmodelvalueDomicileBank_input|tab_deposits_debits:formReport:input_OperationsTreatRejectedManualBeanmodelvalueDomicileBank_input|frmSearchBillingPrice:autoComplete_bancko_preci_acc_input'
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
        when 'Preço base - % CDI'.downcase
            campo = 'tabFlexiblePrecification:tablePriceBaseStep1_id:0:txtCdiStep1_id_input'
        when 'inicio da vigencia'
            campo = 'tabFlexiblePrecification:dtStartCurrentStep1_id_input'
        when 'numero da solicitacao - ajustes financeiros'
            campo = 'tab_regularization:input_SearchRegularizationBeansearchRegularizationDTOrequestNumber'
        when 'data-de'
            campo = 'tab_deposits_debits:formReport:dtSetrTo_input|dateIn_input|formRejectedFlag:initialRejectDate_input'
        when 'data-ate'
            campo = 'tab_deposits_debits:formReport:dtSetrUntil_input|dateOut_input|formRejectedFlag:finalRejectDate_input'
        when 'data de rejeicao - de'
            campo = 'tabRejectionCapture:initialRejectionDateTreatment_input|tabRejectionCapture:initialRejectionDate_input'
        when 'data de rejeicao - ate'
            campo = 'tabRejectionCapture:finalRejectionDateTreatment_input|tabRejectionCapture:finalRejectionDate_input'
        when 'data de rejeicao tratamento - de'
            campo = 'initialRejectionDateTreatment_input'
        when 'data de rejeicao tratamento - ate'
            campo = 'finalRejectionDateTreatment_input'
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
            campo = 'tabGeralPesquisaAvancada:formAutorizacaoMultiFiltros:.*'
            var_i = 5
        when 'data autorizacao reprocessamento de vendas - de'
            campo = 'tab_reprocessing_sales:initial_date_transaction_input'
        when 'data autorizacao reprocessamento de vendas - ate'
            campo = 'tab_reprocessing_sales:final_date_transaction_input'
        when 'codigo de autorizacao'
            campo = 'input_IncludeReprocessingSalesBeandtoauthorizationCode'
        when 'comentario'
            campo = 'tab_reprocessing_sales:input_IncludeReprocessingSalesBeandtoobservations'
        when 'reprocessamento de vendas - data autorizacao - de'
            campo = 'tab_reprocessing_sales:initial_date_transaction_input'
        when 'reprocessamento de vendas - data autorizacao - ate'
            campo = 'tab_reprocessing_sales:final_date_transaction_input'
        when 'reprocessamento de vendas - nsu'
            campo = 'tab_reprocessing_sales:input_ReprocessingSalesSearchTransactionBeandtonuSerialSequenceTransaction'
        when 'reprocessamento de vendas - codigo de autorizacao'
            campo = 'tab_reprocessing_sales:input_IncludeReprocessingSalesBeandtoauthorizationCode'
        when 'cancelamento e reversao de vendas - numero da solicitacao'
            campo = 'tab_request:formRequest:cancellation_number'
        when 'cep'
            campo = 'tab_tabGeral:frmAddress:inputSearchCep'
        when 'quantidade de parcelas - tipo de pagamento'
            campo = 'tab_tabGeral:tabProduct:paymentPanel:qtdInstallments'
        else
            raise 'Campo não encontrado'
        end

        # $browser.text_field(id: /#{campo}$/, index: 0).when_present.set valor
        #Watir::Wait.until { $browser.text_field(id: /#{campo}$/, index: 0).exist? }

        sleep 2
        aguardar_loading
        if $browser.text_field(id: /#{campo}$/, index: var_i).exist? # Valida se o campo existe
            if $browser.text_field(id: /#{campo}$/, index: var_i).disabled? # valida se o campo está habilitado
                return false
            else
                #ação caso o campo esteja habilitado
                $browser.text_field(id: /#{campo}$/, index: var_i).set valor
                aguardar_loading
                $browser.send_keys :tab
                aguardar_loading

                if $browser.text_field(id: /#{campo}$/, index: var_i).value != ''
                    $encoded_img = $browser.driver.screenshot_as(:base64)
                    return true
                else
                    $encoded_img = $browser.driver.screenshot_as(:base64)
                    return false
                end
            end

        else
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
        result
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

    def clicar_link(texto, i = 0)
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

    def selecionar_radio_button(radio, i = 0)
        if $browser.label(text: radio).exist?
            $browser.label(text: radio, index: i).click
            sleep 2
            result = true
        else
            result = false
        end
        sleep 2
        $encoded_img = $browser.driver.screenshot_as(:base64)
        return result
    end

    def selecionar_check_box_tabela(linha, coluna = 0)
        if $browser.tr(data_ri: (linha.to_i - 1).to_s).td(index: coluna.to_i - 1).exist?
            $browser.tr(data_ri: (linha.to_i - 1).to_s).td(index: coluna.to_i - 1).click
            sleep 2
            result = true
        else
            result = false
        end
        sleep 2
        $encoded_img = $browser.driver.screenshot_as(:base64)
        result
    end

    def selecionar_radio_button_tabela(linha, coluna = 0)
        if $browser.tr(data_ri: (linha.to_i - 1).to_s).td(index: coluna).exist?
            $browser.tr(data_ri: (linha.to_i - 1).to_s).td(index: coluna).click
            sleep 2
            result = true
        else
            result = false
        end
        sleep 2
        $encoded_img = $browser.driver.screenshot_as(:base64)
        result
    end

    def validar_btn_exportar(botao) # pode validar todos os botes e nao somente o exportar
        #Watir::Wait.until { $browser.button(text: botao).exists? }
        sleep 2
        if $browser.button(text: botao, aria_disabled: 'false').exist?
            $encoded_img = $browser.driver.screenshot_as(:base64)
            result = true
        elsif $browser.button(value: /#{botao}/).exist?
            $encoded_img = $browser.driver.screenshot_as(:base64)
            result = true

        else
            $encoded_img = $browser.driver.screenshot_as(:base64)
            result = false
        end
    end

    def selecionar_radio_button_tabela(linha, coluna = 0)
        if $browser.tr(data_ri: (linha.to_i - 1).to_s).td(index: coluna).exist?
            $browser.tr(data_ri: (linha.to_i - 1).to_s).td(index: coluna).click
            sleep 2
            result = true
        else
            result = false
      end
        sleep 2
        $encoded_img = $browser.driver.screenshot_as(:base64)
        result
    end

    def formata_data_atual(formato)
        case formato
        when 'dd/mm/aaaa'
            format_atual = '%d/%m/%Y'
        when 'aaaa-mm-dd'
            format_atual = '%Y-%m-%d'
        end
        Time.now.strftime(format_atual)
    end

    ########################################################################################################################
    # AutoIT
    ########################################################################################################################
    def autoit_mover_mouse
        diretorio = File.expand_path File.dirname(__FILE__) + '/'
        system(diretorio + '/autoit/mover_mouse.exe')
    end


    ########################################################################################################################
    # ALM
    ########################################################################################################################
    def obtem_dados_ct(nome_coluna_release, nome_coluna_testset, nome_coluna_ciclo, nome_coluna_ct, nome_release, nome_testset, nome_ciclo, nome_ct)
        book = Spreadsheet.open('./features/Get-Instance-Run-ID.xls')
        sheet1 = book.worksheet 0
        column_counter = sheet1.column_count
        row_counter = sheet1.row_count
        dados = {}
        found_release = false
        found_testset = false
        found_cycle = false
        encontrado = false

    for count_column_release in 0...column_counter
        if sheet1.cell(0, count_column_release) == nome_coluna_release
            selected_column_release = count_column_release
            found_release = true
        end
    end

    for count_column_testset in 0...column_counter
        if sheet1.cell(0, count_column_testset) == nome_coluna_testset
            selected_column_testset = count_column_testset
            found_testset = true
        end
    end

    for count_column_cycle in 0...column_counter
        if sheet1.cell(0, count_column_cycle) == nome_coluna_ciclo
            selected_column_ciclo = count_column_cycle
            found_cycle = true
        end
    end

    raise "N\xC3\xA3o foi poss\xC3\xADvel encontrar a coluna Release. Por gentileza, verifique a planilha de dados." unless found_release
    raise "N\xC3\xA3o foi poss\xC3\xADvel encontrar a coluna Testset. Por gentileza, verifique a planilha de dados." unless found_testset
    raise "N\xC3\xA3o foi poss\xC3\xADvel encontrar a coluna Ciclo. Por gentileza, verifique a planilha de dados." unless found_cycle

    for count_column in 0...column_counter
        next unless sheet1.cell(0, count_column) == nome_coluna_ct
        for count_row in 0...row_counter
            if nome_testset.nil? || nome_testset == 'N'
                if sheet1.cell(count_row, count_column) == nome_ct && sheet1.cell(count_row, selected_column_ciclo) == nome_ciclo && sheet1.cell(count_row, selected_column_release) == nome_release
                    for count_total in 0...column_counter
                        chave = sheet1.cell(0, count_total).to_s
                        valor = sheet1.cell(count_row, count_total).to_s
                        dados[chave] = valor
                    end
                    encontrado = true
                end
            else
                if sheet1.cell(count_row, count_column) == nome_ct && sheet1.cell(count_row, selected_column_ciclo) == nome_ciclo && sheet1.cell(count_row, selected_column_release) == nome_release && sheet1.cell(count_row, selected_column_testset) == nome_testset
                    for count_total in 0...column_counter
                        chave = sheet1.cell(0, count_total).to_s
                        valor = sheet1.cell(count_row, count_total).to_s
                        dados[chave] = valor
                    end
                    encontrado = true
                end
            end
        end
    end

    raise "N\xC3\xA3o foi poss\xC3\xADvel encontrar a Release, Testset ou Ciclo informados. Por gentileza, verifique a planilha de dados ou os par\xC3\xA2metros da chamada." unless encontrado.equal? true
    return dados
  end

    def adicionar_registro_log_execucao(caminho_arquivo, nome_teste, status, data, hora, observacao, passo, sobrescrever_registro=false)
        fecha_processos_excel
        excel = WIN32OLE.new('excel.application')
        excel.visible = true
        workbook = excel.WorkBooks.open(caminho_arquivo)
        worksheet = workbook.WorkSheets('Status')
        linha = 1
        loop do
            linha += 1
            comparacao = worksheet.Cells(linha, 1).value
			break if comparacao == nil
			break if comparacao == nome_teste if sobrescrever_registro
        end
        worksheet.Cells(linha, 1).value = nome_teste
        worksheet.Cells(linha, 2).value = status
        worksheet.Cells(linha, 3).value = data
        worksheet.Cells(linha, 4).value = hora
        if observacao.exception.equal? nil
            worksheet.Cells(linha, 5).value = ' '
            worksheet.Cells(linha, 6).value = ' '
        else
            worksheet.Cells(linha, 5).value = observacao.exception.message
            worksheet.Cells(linha, 6).value = passo
        end
        workbook.save
        workbook.close
        fecha_processos_excel
    end

    def fecha_processos_excel
        wmi = WIN32OLE.connect("winmgmts://")
        processos = wmi.ExecQuery("Select * from Win32_Process Where NAME = 'EXCEL.exe'")
        processos.each do |processo|
            Process.kill('KILL', processo.ProcessID.to_i) if processo.execMethod_('GetOwner').User.downcase == Etc.getlogin.downcase
        end
        sleep 2
    end

end
