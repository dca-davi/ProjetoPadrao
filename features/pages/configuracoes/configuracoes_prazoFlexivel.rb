class Configuracoes_prazoFlexivel
  @@utils = Utils.new

    def clicar_botao_editar(botao)#
      if $browser.button(text: botao, index: 1).exist?
        $browser.button(text: botao, index: 1).click
        sleep 2
        result = true
      else
        result = false
      end
      $encoded_img = $browser.driver.screenshot_as(:base64)
      return result
    end
  end
