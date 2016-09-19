class Trava_Prazo_Vencido
  @@utils = Utils.new

  def validar_pagina (tela)
    result = true
     if $browser.h1(:text => tela ).exists?
        sleep 3
        $encoded_img = $browser.driver.screenshot_as(:base64)
     else
       result = false
     end
  end

  def validar_botao (botao)
    Watir::Wait.until {$browser.button(:text => botao).exists?}
    if $browser.button(:text => botao).attribute_value("aria-disabled") == "true"
      result = true
    else
     result = false
    end
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end

  def validar_botao_exportar (botao)
    Watir::Wait.until {$browser.span(:id => /formRejectedFlag:panelTable/).input(:value => botao).exists?}
    if $browser.span(:id => /formRejectedFlag:panelTable/).input(:value => botao).exists?
      result = true
      else
      result = false
    end
  end

  def validar_botao_exportar_grid (botao)
    Watir::Wait.until {$browser.input(:value => /Exportar/).exists?}
    if $browser.input(:value => /Exportar/).exists?
      result = true
      else
      result = false
    end
    $encoded_img = $browser.driver.screenshot_as(:base64)
  end

  def preencher_filtros (tela)
    case tela
      when "Bandeira"
        if $browser.h1(:text => tela ).exists?
           $browser.div(:id => /cardAssociationCombo/).span(:class => /ui-icon-triangle/).click
           $browser.execute_script("arguments[0].click()", $browser.div(:id => /cardAssociationCombo_panel/).li(:text => 'Visa'))
           sleep 1
           $browser.execute_script("arguments[0].click()", $browser.div(:id => /transactType_panel/).li(:text => 'Venda'))
         else
           result = false
         end
       when "Depósitos | Débitos"
        if $browser.h1(:text => tela ).exists?
           $browser.div(:class => /ui-radiobutton-box/).span(:class => /ui-radiobutton-icon/).click
           sleep 1
           $browser.label(:text => "Crédito").click
           sleep 1
           $browser.execute_script("arguments[0].click()", $browser.div(:id => /cardAssociation_panel/).li(:text => 'VISA'))
           $browser.text_field(:name => /dtSetrTo_input/).set (DateTime.now - 5).strftime("%d%m%Y")
           sleep 5
           $browser.span(:id => /dtSetrUntil/).button(:class => /ui-datepicker-trigger/).click
           sleep 1
           $browser.span(:id => /dtSetrUntil/).button(:class => /ui-datepicker-trigger/).click
           $browser.a(:class => /ui-state-highlight/).click
           sleep 2
=begin
           $browser.execute_script("arguments[0].value  = arguments[1]", $browser.text_field(:name => /dtSetrUntil_input/), (DateTime.now).strftime("%d/%m/%Y"))
           $browser.text_field(:name => /input_OperationsTreat/).click
=end
        else
          result = false
        end
        $encoded_img = $browser.driver.screenshot_as(:base64)
    end
  end
end
