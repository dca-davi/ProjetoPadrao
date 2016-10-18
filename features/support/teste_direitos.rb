require 'spreadsheet'

def verificar_direitos_perfil(nome_direito)
    book = Spreadsheet.open('C:\Users\demis.meneghetti\git\automation-test-seginfo\features\direitoXperfil_V1.xls')
    file = 'C:\Users\demis.meneghetti\Desktop\direitoXperfil_Tags.txt'
    target = open(file, 'w')
    sheet1 = book.worksheet 0
    i = 0

    for count in 1...sheet1.row_count
        direito = sheet1.cell(count, 0)
        direito_index = count

        break if direito.casecmp(nome_direito).zero?
        raise('Direito nao encontrado') if count == (sheet1.row_count - 1)
    end

    for count in 1...sheet1.column_count
        val_direito = sheet1.cell(direito_index, count)

        next unless val_direito == 'X'
        target.write("@#{sheet1.cell(0, count).upcase} ")
        i += 1
        target.write("\n") if (i % 3).zero?
        end
    target.close
end

verificar_direitos_perfil('OPERACOES_MASTER_REJEITADOS_PAGAMENTOSEDEBITOS_EDITAR')
