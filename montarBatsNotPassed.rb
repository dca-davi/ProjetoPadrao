# encoding: utf-8
require 'find'
######excel---####require 'axlsx'
# modificar pastas de reports e bats
<<<<<<< HEAD
pathReport ="C:/Users/davi.alves/Git/automation-test-seginfo/automation-test-seginfo/Reports"
=======
pathReport ="C:/Git/automation-test-seginfo/Reports/"
>>>>>>> 2e40d2d8ca2575cc607ee1be936472fe5fcfb35a

pathBat = "C:/Interface/seginfo/"

#variaveis auxiliares
total_size = 0
str1 = ""
str = ""
files = []
gerados = []
strPerfilAnterior = ""

#contadores

# Inicio da verificação
begin
    Find.find(pathReport) do |path|
      puts 'inicia validacoes: ' + path
      Find.prune if path.include? '.git'
      Find.prune if path.include? '.csv'
      next unless File.file?(path)
      # files << path
      str = path
      strPerfil = str[str.index(' - Perfil ') + 10,  str.index('.html') - (str.index(' - ') + 10)]
      strDireito = str[str.index('Direito ')+8, str.index(' - ') - (str.index('Direito ')+8) ]
      strColunas = strPerfil + "," + strDireito
      strExecutar = 'call "' + pathBat + strPerfil + '/Perfil ' + strPerfil + ' - Direito ' + strDireito + '.bat"'
      #puts 'validando...'

        # if strPerfilAnterior != strPerfil
        #     if strPerfilAnterior == ""
        #         strPerfilAnterior = strPerfil
        #     else
        #         open( pathBat + strPerfilAnterior + '/!rodar_faileds.bat', 'w') do |t|
        #           t.puts files
        #           gerados << pathBat + strPerfilAnterior + '/!rodar_faileds.bat'
        #         end
        #         files = []
        #         strPerfilAnterior = strPerfil
        #     end
        # end

        puts 'validacao feita... incluindo no bat'
        files << strExecutar unless File.readlines(path).grep(/1 scenario \(1 passed/).size > 0
    end
rescue
    puts "Error reading files."
end


open( pathBat + strPerfilAnterior + '!rodar_faileds.bat', 'w') do |t|
  t.puts files
  gerados << pathBat + strPerfilAnterior + '!rodar_faileds.bat'
end



# relatorio de execução
puts ''
puts ''
puts '-------------------------------------------'
puts 'Arquivos de execução gerados:'
puts gerados
######excel---####puts 'Relatório gerado:'
######excel---####puts pathReport+'RelatorioGeral.xlsx'
