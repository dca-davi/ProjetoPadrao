module ALM
    class REST
        def initialize(dominio, projeto)
            @projeto = projeto
            @dominio = dominio
            @response_auth
            @token
            @response_session
            @cookiesHash
            @arquivo = Manipula_arquivo.new
            @xml_path = './XML' # 'C:/Git/automation-test-seginfo/XML'
        end

        def autenticar(usuario, senha)
            usuario_hash = criptografar(usuario + ':' + senha)
            @response_auth = RestClient::Request.execute(
                method: :get,
                url: 'https://almcielo.saas.hp.com/qcbin/authentication-point/authenticate',
                headers: { Authorization: usuario_hash }
                # proxy: 'http://proxypac:8080/'
            )
            @token = @response_auth.cookies.values[0]
            @response_session = RestClient::Request.execute(
                method: :post,
                url: 'https://almcielo.saas.hp.com/qcbin/rest/site-session',
                cookies: { LWSSO_COOKIE_KEY: @token }
                # proxy: 'http://proxypac:8080/'
            )
            @cookiesHash = Hash['cookie_key' => @response_session.cookies.values[2], 'qcsession' => @response_session.cookies.values[3]]
        end

        def criptografar(hash)
            crypt = Base64.encode64(hash)
            'Basic ' + crypt.to_s
        end

        def criar_run(hash)
            # conteudo = @arquivo.ler_arquivo('../XML/run.xml')
            conteudo = @arquivo.ler_arquivo("#{@xml_path}/run.xml")
            xml_alterado = manipula_XML(conteudo, hash)
            return RestClient::Request.execute(
                method: :post,
                url: 'https://almcielo.saas.hp.com/qcbin/rest/domains/' + @dominio + '/projects/' + @projeto + '/runs',
                payload: xml_alterado.to_s,
                headers: {
                    :'Content-Type' => 'application/xml',
                    :Accept => 'application/xml'
                },
                cookies: {
                    LWSSO_COOKIE_KEY: @cookiesHash['cookie_key'],
                    QCSession: @cookiesHash['qcsession']
                }
                # proxy: 'http://proxypac:8080/'
            )
        rescue RestClient::ExceptionWithResponse => err
            raise err.response
        end

        def atualizar_run(hash)
            # conteudo = @arquivo.ler_arquivo('../XML/run_update.xml')
            conteudo = @arquivo.ler_arquivo("#{@xml_path}/run_update.xml")
            xml_alterado = manipula_XML(conteudo, hash)
            return RestClient::Request.execute(
                method: :put,
                url: 'https://almcielo.saas.hp.com/qcbin/rest/domains/' + @dominio + '/projects/' + @projeto + '/runs/' + hash['id'],
                payload: xml_alterado.to_s,
                headers: {
                    :'Content-Type' => 'application/xml',
                    :Accept => 'application/xml'
                },
                cookies: {
                    LWSSO_COOKIE_KEY: @cookiesHash['cookie_key'],
                    QCSession: @cookiesHash['qcsession']
                }
                # proxy: 'http://proxypac:8080/'
            )
        rescue RestClient::ExceptionWithResponse => err
            raise err.response
        end

        def obter_valor_XML(nome_campo, arquivo_XML)
            Nokogiri::XML(arquivo_XML).xpath("//Entity/Fields/Field[@Name='" + nome_campo.to_s + "']/Value").text
        end

        def criar_step(hash)
            # conteudo = @arquivo.ler_arquivo('../XML/step.xml')
            conteudo = @arquivo.ler_arquivo("#{@xml_path}/step.xml")
            xml_alterado = manipula_XML(conteudo, hash)
            return RestClient::Request.execute(
                method: :post,
                url: 'https://almcielo.saas.hp.com/qcbin/rest/domains/' + @dominio + '/projects/' + @projeto + '/run-steps',
                payload: xml_alterado.to_s,
                headers: {
                    :'Content-Type' => 'application/xml',
                    :Accept => 'application/xml'
                },
                cookies: {
                    LWSSO_COOKIE_KEY: @cookiesHash['cookie_key'],
                    QCSession: @cookiesHash['qcsession']
                }
                # proxy: 'http://proxypac:8080/'
            )
        rescue RestClient::ExceptionWithResponse => err
            raise err.response
        end

        def enviar_evidencia(hash)
            arquivo = @arquivo.ler_arquivo_binario(hash['caminho_arquivo'])
            return RestClient::Request.execute(
                method: :post,
                url: 'https://almcielo.saas.hp.com/qcbin/rest/domains/' + @dominio + '/projects/' + @projeto + '/' + hash['entidade'] + '/' + hash['run_id'] + '/attachments',
                payload: arquivo,
                headers: {
                    :'Content-Type' => 'application/octet-stream',
                    :Slug => File.basename(arquivo)
                },
                cookies: {
                    LWSSO_COOKIE_KEY: @cookiesHash['cookie_key'],
                    QCSession: @cookiesHash['qcsession']
                }
                # proxy: 'http://proxypac:8080/'
            )
            arquivo.close
        rescue RestClient::ExceptionWithResponse => err
            raise err.response
        end

        def manipula_XML(conteudo, hash)
            novo_node_xml = nil
            @conteudo_xml = Nokogiri::XML(conteudo).root
            hash.each do |chave, valor|
                conteudo_novo_xml = @conteudo_xml.at_xpath("//Entity/Fields/Field[@Name='#{chave}']/Value")
                conteudo_novo_xml.content = valor
                @conteudo_xml.to_xml
            end
            @conteudo_xml
        end
       end
end
