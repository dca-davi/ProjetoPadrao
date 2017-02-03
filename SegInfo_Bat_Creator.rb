# Gerador de Arquivos .bat para execução dos scripts de automação do projeto SegInfo
# Criado por Rafael Ponzio em 25/10/2016

require 'spreadsheet'

book = Spreadsheet.open("#{Dir.pwd}/SegInfo - bats.xls")	# Abrir Excel com as informações necessárias
files = Array.new
# Mapear as abas do arquivo Excel
direitos = book.worksheet 0
perfis = book.worksheet 1
outros = book.worksheet 2

ambiente = outros.cell(1, 0) # Coletar o valor do Ambiente

for count in 1...perfis.row_count               # Percorrer todos os perfis da planilha
    perfil = perfis.cell(count, 0)

    for count in 1...direitos.row_count         # Percorrer todos os direitos da planilha
        direito = direitos.cell(count, 0)
        break if direito.nil?

        filename = "#{Dir.pwd}\\#{perfil}\\Direito #{direito} - Perfil #{perfil}.bat"   # Definir nome do arquivo
        dirname = File.dirname(filename)                                                # Coletar nome do diretório

        Dir.mkdir dirname unless File.directory?(dirname)                               # Criar o diretório caso não exista
        file = File.open(filename, 'w')                                                 # Abrir o arquivo criado
        #puts filename                                                                   # Imprime o nome do arquivo gerado        

        files << filename
        testset = "CT.SEGINFO - [AUT]  #{perfil.gsub("_"," ")}"

        # Escrever no arquivo do test case
        file << "@echo off\n"
        file << "chcp 65001\n"
        file << "cd C:\\Git\\automation-test-seginfo\n"
        file << "echo Executando Direito #{direito} - Perfil #{perfil}\n"
        file << "cucumber --tag @#{direito} Perfil=#{perfil} --format html --out=\"./Reports/Direito #{direito} - Perfil #{perfil}.html\" TEST_ENV=#{ambiente} CICLO_ALM=\"[Automação] Prevenção e Segurança\" RELEASE_ALM=\"[HML] Homologação Ciclo 1\" TESTSET_ALM=\"#{testset}\" EVIDENCIA_ALM=S \n"
        file << "cd #{dirname}\n"
        file.close

        next if count == (direitos.row_count - 1)        
      end

      fileGname = "#{Dir.pwd}\\#{perfil}\\!Todos direitos - #{perfil}.bat"
      dirname = File.dirname(fileGname)                                     # Coletar nome do diretório
      system 'mkdir', dirname unless File.directory?(dirname)               # Criar o diretório caso não exista
      fileG = File.open(fileGname, 'w')                                     # Abrir o arquivo criado
      puts fileGname                                                            # Imprime o nome do arquivo gerado      
      fileG << "cd C:\\Git\\automation-test-seginfo\n"
      fileG << "git pull seginfo master\n"
      fileG << "cd #{dirname}\n\n"
      files.each { |x| fileG << "call \"#{x}\"\n" }
      fileG.close
      files.clear
      break if count == (perfis.row_count - 1)
end