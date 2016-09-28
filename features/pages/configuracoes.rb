class Configuracoes
  @@utils = Utils.new
    def selecionar_tipoInclusao(tipo)
        utils = Utils.new
        $browser.table(id: 'entryMode').label(text: tipo).click
        utils.aguardar_loading
    end
end
