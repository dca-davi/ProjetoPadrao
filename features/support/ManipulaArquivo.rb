class Manipula_arquivo
    def escrever_arquivo(arquivo, texto, tipo)
        File.open(arquivo, tipo) { |file| file.write(texto) }
    end

    def ler_arquivo(arquivo)
        meu_arquivo = File.read(arquivo)
    end

    def ler_arquivo_binario(arquivo)
        meu_arquivo = File.open(arquivo, 'rb')
    end
end
