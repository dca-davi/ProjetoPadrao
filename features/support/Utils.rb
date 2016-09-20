class Utils

  def visit
    $browser.goto "#{URL}"

    while $browser.a(:id => 'overridelink').exists?
      $browser.a(:id => 'overridelink').click
    end
  end

  def fazer_login
    $browser.textarea(:id => 'IDToken1').set "#{USER}"
    $browser.textarea(:id => 'IDToken2').set "#{PASS}"
    $browser.button(:name => 'Login.Submit').click
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
        pagina = "Exceção"

      when 'Exceção_prazoFlexivel'
        i = 1
        pagina = "Exceção"
    end

    sleep 2
    Watir::Wait.until {$browser.a(:text => pagina, :index => i).exists?}
    if $browser.a(:text => pagina, :index => i).attribute_value("onclick") == "return false;"
      $encoded_img = $browser.driver.screenshot_as(:base64)
      return false
    else
      sleep 1
      $browser.execute_script("arguments[0].click()", $browser.a(:text => pagina, :index => i))
      self.aguardar_loading
      sleep 2
      $encoded_img = $browser.driver.screenshot_as(:base64)
      return true
    end

  end

  def tem_direito?(nome_direito)
    book = Spreadsheet.open('features\direitoXperfil_V1.xls')

    sheet1 = book.worksheet 0

    for count in 1...sheet1.column_count
     perfil = sheet1.cell(0,count)
     perfil_index = count
     compare = perfil.casecmp($perfil)
     break if compare == 0
     if count == (sheet1.column_count - 1)
       fail('Perfil nao encontrado')
     end
    end

    for count in 1...sheet1.row_count
     direito = sheet1.cell(count,0)
     direito_index = count
     break if direito.casecmp(nome_direito) == 0
      if count == (sheet1.row_count - 1)
        fail('Direito nao encontrado')
      end
    end

    if sheet1.cell(direito_index, perfil_index) == nil
      return false
    else
      return true
    end

=begin
    compare = sheet1.cell(direito_index, perfil_index).casecmp('x')
    if  compare == 0
      return true
    else
      return false
    end
=end
  end

  def aguardar_loading
    count = 0
    sleep 1
    if $browser.div(:id => 'statusDialogWaiting').exists?
      begin
        while $browser.div(:id => 'statusDialogWaiting').visible? && count < 40
          sleep 1
          count += 1
        end
      rescue
      end
    end
  end

  def verificar_direito_star(nome_direito, direito_planilha)
    url = (/.*web\//).match($browser.url).to_s + 'common/teste-osb.xhtml'
    $browser.goto url
    $browser.button(:text => 'Show OpenAM Granted Authorities').when_present.click
    sleep 1
    grants = (/^Granted.*/).match($browser.div(:text => /^Granted Authorities/).text)
    grants = grants.to_s.sub(/^.*\:/,'').strip
    grants = grants.split(/,\s*/)
    $encoded_img = $browser.driver.screenshot_as(:base64)

    if !grants.include? "RIGHT_#{nome_direito}" and direito_planilha
      return "O perfil utilizado não esta condizente com a planilha de direitos! / Direito: #{nome_direito}"
    elsif grants.include? "RIGHT_#{nome_direito}" and !direito_planilha
      return "O perfil utilizado não esta condizente com a planilha de direitos! / Direito: #{nome_direito}"
    end
    2.times{$browser.back}
    return nil
  end

  def clicar_botao_tela (botao)
    result = true
    sleep 2
      $encoded_img = $browser.driver.screenshot_as(:base64)
    Watir::Wait.until {$browser.button(:text => botao).exists?}
      if $browser.button(:text => botao).exists?
          sleep 2
          $browser.button(:text => botao).click
      else
          result = false
      end
      return result
  end


  def acessar_aba(aba)
    sleep 2
    if $browser.li(:text => aba).attribute_value('class').include? ('ui-state-disabled')
      $encoded_img = $browser.driver.screenshot_as(:base64)
      return false
    else
      $browser.li(:text => aba).wait_until_present
      $browser.li(:text => aba).click
      sleep 3
      $encoded_img = $browser.driver.screenshot_as(:base64)
      return true
    end
  end

  def validar_acesso_aba(aba)
    sleep 2
    aguardar_loading
    sleep 2
    Watir::Wait.until {$browser.a(:text => aba).exists?}
      if $browser.li(:text => aba).attribute_value('aria-expanded') == 'true'
        return true
      else
        return false
      end
  end

  def validar_botao(botao)
    Watir::Wait.until {$browser.button(:text => botao).exists?}
    if $browser.button(:text => botao).attribute_value("aria-disabled") == "true"
      result = false
    else
      $browser.button(:text => botao).click
     result = true
    end
    sleep 3
    $encoded_img = $browser.driver.screenshot_as(:base64)
    return result
  end

  def verificar_label(label)
    sleep 2
    if $browser.label(:text => label).present?
      $encoded_img = $browser.driver.screenshot_as(:base64)
      return true
    else
      $encoded_img = $browser.driver.screenshot_as(:base64)
      return false
    end
  end

  def alterar_hierarquia(hierarquia)
    Watir::Wait.until {$browser.div(:id => /cmbHierarchyLevel_panel/).exists?}
      $browser.execute_script("arguments[0].click()", $browser.div(:id => /cmbHierarchyLevel_panel/).li(:text => hierarquia))
      aguardar_loading
      $encoded_img = $browser.driver.screenshot_as(:base64)
  end

  def clicar_botao_acao (acao)
    sleep 2
    case
    when "Visualizar"
      acao = /icon[_]?view/

    when 'Editar'
      acao = /ico[_]?edit/
    end

    Watir::Watir.until {$browser.a(id: => acao).exist?}

      if $browser.a(:id => acao).exist?
        sleep 2
        $browser.a(id: => acao).click
        result = true
      else
        result = false
      end
      sleep 3
      $encoded_img = $browser.driver.screenshot_as(:base64)

      return result
      
    end

  end
