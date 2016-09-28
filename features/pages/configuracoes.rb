class Configuracoes
    def selecionar_tipoInclusao(tipo)
        utils = Utils.new
        $browser.table(id: 'entryMode').label(text: tipo).click
        utils.aguardar_loading
    end

    def selecionar_indice(valor)
        utils = Utils.new
        utils.selecionar_valor_combobox('indecesMenu_panel$', valor)
    end
end
