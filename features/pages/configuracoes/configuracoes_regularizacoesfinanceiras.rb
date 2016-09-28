# CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRASDECANCELAMENTO_VER
# CONFIGURACOES_REGULARIZACOESFINANCEIRAS_REGRADELIBERACAO_VER
class Configuracoes_regularizaoesfinanceiras
  @@utils = Utils.new
    # Demis >>>
    def validar_painel_grid(_grid)
        if $browser.div(text: 'Dados da pesquisa').exists?
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return true
        else
            $encoded_img = $browser.driver.screenshot_as(:base64)
            return false
        end
    end
    # Demis <<<
end
