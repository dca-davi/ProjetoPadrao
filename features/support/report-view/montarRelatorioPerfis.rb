# encoding: utf-8
system "chcp", "65001"
require 'find'
require 'axlsx'
# modificar pastas de reports e bats
pathTest ="C:/Users/demis.meneghetti/OneDrive/git/automation-test-seginfo/reports"
pathBat = "C:/Users/demis.meneghetti/Desktop/bats/"

#variaveis auxiliares
total_size = 0
str1 = ""
str = ""
files = []
files2 = []
gerados = []
files2 << 'Perfil,Direito,Status,decricao erro'
strPerfilAnterior = ""

#contadores
cont_perfilsemdireito = 0
cont_acao_habilitada = 0
cont_nao_encontrado = 0
cont_timeout = 0
cont_objeto_desabilitado = 0
cont_campo_valorindevido = 0
cont_tela_incorreta = 0
cont_acao_nao_habilitada = 0
cont_passed = 0
cont_verificar = 0

# Inicio da verificação
begin
    Find.find(pathTest) do |path|
      puts 'inicia validacoes: ' + path
      Find.prune if path.include? '.git'
      Find.prune if path.include? '.csv'
      Find.prune if path.include? 'executados'
      next if path.include? 'executados'
      next unless File.file?(path)
      # files << path
      str = path
      strPerfil = str[str.index(' - Perfil ') + 10,  str.index('.html') - (str.index(' - ') + 10)]
      strDireito = str[str.index('Direito ')+8, str.index(' - ') - (str.index('Direito ')+8) ]
      strColunas = strPerfil + "," + strDireito
      strExecutar = 'call "' + pathBat + strPerfil + '/Direito ' + strDireito + ' - Perfil ' + strPerfil + '.bat"'
      puts 'validando...'
        case
            when File.readlines(path).grep(/O perfil utilizado não esta condizente com a planilha de direitos!/).size > 0
                 files2 << strColunas + ",failed,perfil sem direito (verificar planilha de direitos)"
                 cont_perfilsemdireito += 1
            when File.readlines(path).grep(/unable to locate element/).size > 0
                 files2 << strColunas + ",failed,elemento nao encontrado"
                 cont_nao_encontrado += 1
            when File.readlines(path).grep(/n?o tem direito/).size > 0
                 files2 << strColunas + ",failed,acao habilitada - porem nao deveria"
                 cont_acao_habilitada += 1
            when File.readlines(path).grep(/object is disabled/).size > 0
                 files2 << strColunas + ",failed,objeto desabilitado"
                 cont_objeto_desabilitado += 1
            when File.readlines(path).grep(/timed out after 30 seconds/).size > 0
                 files2 << strColunas + ",failed,time out"
                 cont_timeout += 1
            when File.readlines(path).grep(/frame não localizado/).size > 0
                 files2 << strColunas + ",failed,elemento nao encontrado"
                 cont_nao_encontrado += 1
            when File.readlines(path).grep(/Usuario pode clicar no botao no qual tem direito/).size > 0
                 files2 << strColunas + ",failed,acao habilitada - porem nao deveria"
                 cont_acao_habilitada += 1
            when File.readlines(path).grep(/Usuario nao pode acessar aba no qual tem direito/).size > 0
                 files2 << strColunas + ",failed,acao nao habilitada - porem deveria"
                 cont_acao_nao_habilitada += 1
            when File.readlines(path).grep(/A tela não é/).size > 0
                 files2 << strColunas + ",failed,tela incorreta"
                 cont_tela_incorreta += 1
            when File.readlines(path).grep(/Cannot click on element/).size > 0
                 files2 << strColunas + ",failed,nao foi possivel clicar no elemento"
            when File.readlines(path).grep(/usuario sem o direito/).size > 0
                 files2 << strColunas + ",failed,acao habilitada - porem nao deveria"
                 cont_acao_habilitada += 1
            when File.readlines(path).grep(/O campo não deveria aceitar o valor/).size > 0
                 files2 << strColunas + ",failed,campo aceitando valor que nao deveria"
                 cont_campo_valorindevido += 1
            when File.readlines(path).grep(/1 scenario \(1 passed/).size > 0
                 files2 << strColunas + ",passed,-"
                 cont_passed += 1
            else
                 files2 << strColunas + ",Verificar,-"
                 cont_verificar += 1
        end

        if strPerfilAnterior != strPerfil
            if strPerfilAnterior == ""
                strPerfilAnterior = strPerfil
            else
                open( pathBat + strPerfilAnterior + '/!rodar_faileds.bat', 'w') do |t|
                  t.puts files
                  gerados << pathBat + strPerfilAnterior + '/!rodar_faileds.bat'
                end
                files = []
                strPerfilAnterior = strPerfil
            end
        end

        puts 'validacao feita... incluindo no relatorio'
        files << strExecutar unless File.readlines(path).grep(/1 scenario \(1 passed/).size > 0
    end
rescue
    puts "Error reading files."
end

#geracao de relatorio csv
# open(pathTest+'RelatorioGeral.csv', 'w') do |t|
  # t.puts files2
# end

open( pathBat + strPerfilAnterior + '/!rodar_faileds.bat', 'w') do |t|
  t.puts files
  gerados << pathBat + strPerfilAnterior + '/!rodar_faileds.bat'
end


# Geração de relatório excel
p = Axlsx::Package.new
p.workbook.add_worksheet(:name => "Teste Geral") do |sheet|
    files2.each do |linha|
        sheet.add_row linha.split(',')
    end
end

p.workbook.add_worksheet(:name => "Resumo") do |sheet|
    sheet.add_row [ "Descrição do Erro", "Quantidade"]
    sheet.add_row [ "perfil sem direito (verificar planilha de direitos)", cont_perfilsemdireito]
    sheet.add_row [ "acao habilitada - porem nao deveria", cont_acao_habilitada]
    sheet.add_row [ "elemento nao encontrado", cont_nao_encontrado]
    sheet.add_row [ "time out", cont_timeout]
    sheet.add_row [ "objeto desabilitado", cont_objeto_desabilitado]
    sheet.add_row [ "campo aceitando valor que nao deveria", cont_campo_valorindevido]
    sheet.add_row [ "tela incorreta", cont_tela_incorreta]
    sheet.add_row [ "acao nao habilitada - porem deveria", cont_acao_nao_habilitada]
    sheet.add_chart(Axlsx::Bar3DChart,  :title=>"Quantidade", :start_at => "D3", :end_at => "M20") do |chart|
      chart.add_series  :labels => sheet["A2:A9"] , :data => sheet["B2:B9"] #,  :show_legend => false
      chart.show_legend = false
    end
end

p.use_shared_strings = true
p.serialize(pathTest+'RelatorioGeral.xlsx')

# relatorio de execução
puts ''
puts ''
puts '-------------------------------------------'
puts 'Arquivos de execução gerados:'
puts gerados
puts 'Relatório gerado:'
puts pathTest+'RelatorioGeral.xlsx'
