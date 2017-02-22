# Gerador de Arquivos .bat para execução dos scripts de automação do projeto SegInfo
# Criado por Rafael Ponzio em 25/10/2016

require 'spreadsheet'
require 'win32ole'

current_path = Dir.pwd
book = Spreadsheet.open("#{current_path}/SegInfo - bats.xls")	# Abrir Excel com as informações necessárias
files = Array.new

# Mapear as abas do arquivo Excel
direitos = book.worksheet 0
perfis = book.worksheet 1
outros = book.worksheet 2
ambiente = outros.cell(1, 0)                     # Coletar o valor do Ambiente

for count in 1...perfis.row_count               # Percorrer todos os perfis da planilha
    perfil = perfis.cell(count, 0)
	nome_arquivo_log = "#{current_path.gsub('/', '\\')}\\#{perfil}\\LOG_#{perfil}.xlsx"

    for count in 1...direitos.row_count         # Percorrer todos os direitos da planilha
        direito = direitos.cell(count, 0)
        break if direito.nil?

        filename = "#{current_path}\\#{perfil}\\Perfil #{perfil} - Direito #{direito}.bat"   # Definir nome do arquivo
        dirname = File.dirname(filename)                                                # Coletar nome do diretório

        Dir.mkdir dirname unless File.directory?(dirname)                               # Criar o diretório caso não exista
        file = File.open(filename, 'w')                                                 # Abrir o arquivo criado
        report_name = "./Reports/Direito #{direito} - Perfil #{perfil}.html"          # Nome do arquivo do report
        #report_name = "report.html"                                                     # Nome do arquivo do report
        #puts filename                                                                  # Imprime o nome do arquivo gerado

        files << filename
        testset = "CT.SEGINFO - [AUT]  #{perfil.gsub("_"," ")}"

        # Escrever no arquivo do test case
        file << "@echo off\n"
        file << "chcp 65001\n"
        file << "cd C:\\Git\\automation-test-seginfo\n"
        file << "echo Executando Perfil #{perfil} - Direito #{direito}\n"
		file << "cucumber --tag @#{direito} Perfil=#{perfil} --format html --out=\"#{report_name}\" TEST_ENV=#{ambiente} RELEASE_ALM=\"[HML] Homologação Ciclo 1\" CICLO_ALM=\"[Automação] Prevenção e Segurança\" TESTSET_ALM=\"#{testset}\" EVIDENCIA_ALM=S CAMINHO_LOG_EXECUCAO=\"#{nome_arquivo_log}\" SOBRESCREVE_REGISTRO_LOG=S EXECUTAR_STATUS=\"Failed\n"
        file << "cd #{dirname}\n"
        file.close

        next if count == (direitos.row_count - 1)        
    end

    fileGname = "#{current_path}\\#{perfil}\\!Todos direitos - #{perfil}.bat"
    dirname = File.dirname(fileGname)                                               # Coletar nome do diretório
    system 'mkdir', dirname unless File.directory?(dirname)                         # Criar o diretório caso não exista
    fileG = File.open(fileGname, 'w')                                               # Abrir o arquivo criado
    puts fileGname                                                                  # Imprime o nome do arquivo gerado          
	
	if !File.exist? nome_arquivo_log
		# fecha_processos_excel
		wmi = WIN32OLE.connect("winmgmts://")
		processos = wmi.ExecQuery("Select * from Win32_Process Where NAME = 'EXCEL.exe'")
		processos.each do |processo|
			Process.kill('KILL', processo.ProcessID.to_i)
		end
		sleep 2

		#criar log execução
		excel = WIN32OLE.new('excel.application')    
		wb = excel.WorkBooks.add
		ws = wb.WorkSheets.add
		ws.name = 'Status'
		ws.Cells(1, 1).value = "NOME_TESTE"
		ws.Cells(1, 2).value = "STATUS"
		ws.Cells(1, 3).value = "DATA"
		ws.Cells(1, 4).value = "HORA"
		ws.Cells(1, 5).value = "OBSERVAÇÃO"
		wb.SaveAs("#{nome_arquivo_log}")
		wb.close
	end
    
    fileG << "cd C:\\Git\\automation-test-seginfo\n"
    fileG << "git pull seginfo master\n"
    fileG << "cd #{dirname}\n\n"
    files.each { |x| fileG << "call \"#{x}\"\n" }
    fileG.close
    files.clear
    break if count == (perfis.row_count - 1)
end