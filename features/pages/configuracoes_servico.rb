class Configuracoes_servico
    @@utils = Utils.new

    def selecionar_valores(valor, campo)
        case campo
        when 'Tipo'
            @@utils.selecionar_valor_combobox('j_idt[\d]+_panel', valor, 0)

        when "Servi\u00E7o"
            @@utils.selecionar_valor_combobox('j_idt[\d]+_panel', valor, 1)

        when 'Item'
            @@utils.selecionar_valor_combobox('j_idt[\d]+_panel', valor, 2)

        when 'Nome do Contrato'
            @@utils.selecionar_valor_combobox('j_idt[\d]+_panel', valor, 3)

        when 'Forma de faturamento'
            @@utils.selecionar_valor_combobox('j_idt[\d]+_panel', valor, 4)

        when "Vig\u00EAncia"
            @@utils.selecionar_valor_combobox('j_idt[\d]+_panel', valor, 5)
        end
    end
end
# b.execute_script("arguments[0].click()", b.div(:id => /j_idt[\d]+_panel/).li(:text => "Serviço"))
