class Configuracoes_antecipacaoVendas
  @@utils = Utils.new

  def clicar_botao_incluir(incluir)

    case incluir
    when 'incluir - custo de captacao'
      if $browser.div(:id => "tabCosts:button_Arv_msg_arvcapitationcostinclude_").exist?
        $browser.div(:id => "tabCosts:button_Arv_msg_arvcapitationcostinclude_").click
        sleep 1
        result = true
      else
        result = false
      end
    end
    sleep 3
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end

  def clicar_confirmar_custoDeCaptacao(confirmar)

    case confirmar
    when 'confirmar - custo de captacao - incluir'
      if $browser.button(:id => 'tabCosts:button_Arv_msg_confirmar_30E').exist?
        $browser.button(:id => 'tabCosts:button_Arv_msg_confirmar_30E').click
        sleep 1
        result = true
      else
        result = false
      end

    when 'confirmar - custo de captacao - editar'
      if $browser.button(:id => 'tabCosts:button_Arv_msg_confirmar_').exist?
        $browser.button(:id => 'tabCosts:button_Arv_msg_confirmar_').click
        sleep 1
        result = true
      else
        result = false
      end

    when 'ok'
      if $browser.button(:id => 'tabCosts:button_Arv_msg_ok_iXK').exist?
        $browser.button(:id => 'tabCosts:button_Arv_msg_ok_iXK').click
        sleep 1
        result = true
      else
        result = false
      end

    when 'ok - editar'
      if $browser.button(:id => 'tabCosts:button_Arv_msg_ok_jaW').exist?
        $browser.button(:id => 'tabCosts:button_Arv_msg_ok_jaW').click
        sleep 1
        result = true
      else
        result = false
      end
    end
    sleep 4
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end

  def selecionar_radiobutton(frame)

    case frame
    when 'Todos da raiz'
         if $browser.label(:text=> 'Todos da raiz').exist?
           $browser.label(:text=> 'Todos da raiz').click
           sleep 1
           result = true
         else
           result = false
         end
       when 'Individualmente'
         if $browser.label(:text=> 'Individualmente').exist?
           $browser.label(:text=> 'Individualmente').click
           sleep 1
           result = true
         else
           result = false
         end
       end
       sleep 3
       $encoded_img = $browser.driver.screenshot_as(:base64)
     end

     def incluir_cartao_nao_presente
       if $browser.li(text: "Incluir").exist?
         $browser.execute_script("arguments[0].click()", $browser.li(:text => "Incluir", :index => 1))
         sleep 1
         result = true
       else
         result = false
       end
       $encoded_img = $browser.driver.screenshot_as(:base64)
     end

     def botao_incluir_cartao_nao_presente(botao)
       sleep 2
       if $browser.button(:id => /btnOkSearch$/).exist?
         $browser.button(:id => /btnOkSearch$/).click
         result = true
       else
         result = false
       end
       sleep 4
       @@utils.aguardar_loading
       sleep 1
       $encoded_img = $browser.driver.screenshot_as(:base64)
     end

     def adicionar_novos_clientes
       if $browser.tbody(:id => 'tabViewExceptionId:tabViewAbsentCard_id:tableIncludeCardId_data', :index => 0).exist?
         $browser.tbody(:id => 'tabViewExceptionId:tabViewAbsentCard_id:tableIncludeCardId_data', :index => 0).click
         sleep 1
         result = true
       else
         result = false
       end
       sleep 2
       $encoded_img = $browser.driver.screenshot_as(:base64)
     end
end
