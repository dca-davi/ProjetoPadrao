class Relatorios_bandeiras
    @@utils = Utils.new

    def selecionar_tipo_acao(valor, _campo)
        @@utils.selecionar_valor_combobox('cmbActionType_panel', valor)
    end
end
