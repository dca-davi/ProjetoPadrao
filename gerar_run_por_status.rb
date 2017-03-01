require 'spreadsheet'
require 'socket'

require 'rest-client'
require 'base64'
require 'nokogiri'

require './features/support/Utils'
require './features/support/ALMRest'                   
require './features/support/RestCall' 
require './features/support/ManipulaArquivo' 

$rest_ALM = RestCall.new
$rest_ALM.conectar_ALM

book = Spreadsheet.open('./features/Dados-CTs-Atualizar-Status.xls')
sheet1 = book.worksheet 0
column_counter = sheet1.column_count
row_counter = sheet1.row_count
count = 1

for count_row in 1...row_counter
    for count_column in 1...column_counter
       raise "A linha #{count_row} da coluna #{count_column} está vazia, favor verificar." if sheet1.cell(count_row, count_column).empty?
    end
    release = sheet1.cell(count_row, 0).to_s
    testset = sheet1.cell(count_row, 1).to_s
    ciclo = sheet1.cell(count_row, 3).to_s
    nome_cenario = sheet1.cell(count_row, 4).to_s
    status_cenario = sheet1.cell(count_row, 5).to_s

    $rest_ALM.obter_dados_ALM(release, testset, ciclo, nome_cenario)
    status_teste = $rest_ALM.checar_status_ALM
    case status_teste
        when 'Failed'
            #$rest_ALM.alterar_status_teste_ALM(status_cenario)
            puts  "#{count} - #{nome_cenario} - Atual: #{status_teste} | Novo: #{status_cenario}"
        else
            puts "#{count} - #{nome_cenario} Atual: #{status_teste} | Não Alterável para: #{status_cenario}"            
    end

    count += 1        
end

$rest_ALM.desconectar_ALM