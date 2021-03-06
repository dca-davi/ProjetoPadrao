module ALM
    class REST
        def initialize(dominio, projeto)
            @projeto = projeto
            @dominio = dominio
            @response_auth
            @@token
            @response_session
            @cookiesHash
            @arquivo = Manipula_arquivo.new
            @xml_path = './XML' # 'C:/Git/automation-test-seginfo/XML'
			@valor_proxy
            verifica_IP            
        end

        def autenticar(usuario, senha)
			usuario_hash = criptografar(usuario+':'+senha)
			@response_auth = RestClient::Request.execute(
														:method => :get, 
														:url => 'https://almcielo.saas.hp.com/qcbin/authentication-point/authenticate',
														:headers => {:'Authorization' => usuario_hash },
														:proxy => @valor_proxy
													)
			@@token = @response_auth.cookies.values[0]
			@response_session = RestClient::Request.execute(
															:method => :post, 
															:url => 'https://almcielo.saas.hp.com/qcbin/rest/site-session', 
															:cookies => { :LWSSO_COOKIE_KEY => @@token }, 
															:proxy => @valor_proxy
														)
			@cookiesHash = Hash['cookie_key' => @response_session.cookies.values[2], 'qcsession' => @response_session.cookies.values[3]]
		end

		def desconectar
			@response_descon = RestClient::Request.execute(
															:method => :get, 
															:url => 'https://almcielo.saas.hp.com/qcbin/authentication-point/logout',
															:cookies => { :LWSSO_COOKIE_KEY => @@token },  
															:proxy => @valor_proxy
														)
		end

        def criptografar(hash)
			crypt = Base64.encode64(hash)
			return 'Basic '+crypt.to_s
		end

		def checar_status_instancia_teste(hash)
			# conteudo = @arquivo.ler_arquivo('../XML/instance_test.xml')
            conteudo = @arquivo.ler_arquivo("#{@xml_path}/instance_test.xml")
            xml_alterado = manipula_XML(conteudo, hash, 'instance_test')
			return RestClient::Request.execute(
												:method => :get, 
												:url => 'https://almcielo.saas.hp.com/qcbin/rest/domains/'+@dominio+'/projects/'+@projeto+'/test-instances/'+hash['id'].to_s, 
												:payload => xml_alterado.to_s, 
												:headers => { 
															:'Content-Type' => 'application/xml', 
															:'Accept' => 'application/xml'
														}, 
												:cookies => {
															:LWSSO_COOKIE_KEY => @cookiesHash['cookie_key'], 
															:QCSession => @cookiesHash['qcsession']
														},
												:proxy => @valor_proxy
											)
			rescue RestClient::ExceptionWithResponse => err
			raise err.response
		end

		def alterar_status_instancia_teste(hash)
			# conteudo = @arquivo.ler_arquivo('../XML/alterar_status_instance_test.xml')
            conteudo = @arquivo.ler_arquivo("#{@xml_path}/alterar_status_instance_test.xml")
            xml_alterado = manipula_XML(conteudo, hash, 'alterar_status_instance_test')
			return RestClient::Request.execute(
												:method => :put, 
												:url => 'https://almcielo.saas.hp.com/qcbin/rest/domains/'+@dominio+'/projects/'+@projeto+'/test-instances/'+hash['id'].to_s, 
												:payload => xml_alterado.to_s, 
												:headers => { 
															:'Content-Type' => 'application/xml', 
															:'Accept' => 'application/xml'
														}, 
												:cookies => {
															:LWSSO_COOKIE_KEY => @cookiesHash['cookie_key'], 
															:QCSession => @cookiesHash['qcsession']
														},
												:proxy => @valor_proxy
											)
			rescue RestClient::ExceptionWithResponse => err
			raise err.response
		end

        def criar_run(hash)
            # conteudo = @arquivo.ler_arquivo('../XML/run.xml')
            conteudo = @arquivo.ler_arquivo("#{@xml_path}/run.xml")
            xml_alterado = manipula_XML(conteudo, hash, 'run')
			return RestClient::Request.execute(
												:method => :post, 
												:url => 'https://almcielo.saas.hp.com/qcbin/rest/domains/'+@dominio+'/projects/'+@projeto+'/runs', 
												:payload => xml_alterado.to_s, 
												:headers => { 
															:'Content-Type' => 'application/xml', 
															:'Accept' => 'application/xml'
														}, 
												:cookies => {
															:LWSSO_COOKIE_KEY => @cookiesHash['cookie_key'], 
															:QCSession => @cookiesHash['qcsession']
														},
												:proxy => @valor_proxy
											)
			rescue RestClient::ExceptionWithResponse => err
			raise err.response
        end

        def atualizar_run(hash)
            # conteudo = @arquivo.ler_arquivo('../XML/run_update.xml')
            conteudo = @arquivo.ler_arquivo("#{@xml_path}/run_update.xml")
            xml_alterado = manipula_XML(conteudo, hash, 'run')
			return RestClient::Request.execute(
												:method => :put, 
												:url => 'https://almcielo.saas.hp.com/qcbin/rest/domains/'+@dominio+'/projects/'+@projeto+'/runs/'+hash['id'], 
												:payload => xml_alterado.to_s, 
												:headers => { 
															:'Content-Type' => 'application/xml', 
															:'Accept' => 'application/xml'
														}, 
												:cookies => {
															:LWSSO_COOKIE_KEY => @cookiesHash['cookie_key'], 
															:QCSession => @cookiesHash['qcsession']
														}, 
												:proxy => @valor_proxy
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
            xml_alterado = manipula_XML(conteudo, hash, 'run')
			return RestClient::Request.execute(
												:method => :post, 
												:url => 'https://almcielo.saas.hp.com/qcbin/rest/domains/'+@dominio+'/projects/'+@projeto+'/run-steps', 
												:payload => xml_alterado.to_s, 
												:headers => { 
															:'Content-Type' => 'application/xml', 
															:'Accept' => 'application/xml'
														}, 
												:cookies => {
															:LWSSO_COOKIE_KEY => @cookiesHash['cookie_key'], 
															:QCSession => @cookiesHash['qcsession']
														},
												:proxy => @valor_proxy
											)
			rescue RestClient::ExceptionWithResponse => err
			raise err.response
        end

        def enviar_evidencia(hash)
            arquivo = @arquivo.ler_arquivo_binario(hash['caminho_arquivo'])
			return RestClient::Request.execute(
												:method => :post, 
												:url => 'https://almcielo.saas.hp.com/qcbin/rest/domains/'+@dominio+'/projects/'+@projeto+'/'+hash['entidade']+'/'+hash['run_id']+'/attachments', 
												:payload => arquivo, 
												:headers => { 
															:'Content-Type' => 'application/octet-stream', 
															:'Slug' => File.basename(arquivo)
														}, 
												:cookies => {
															:LWSSO_COOKIE_KEY => @cookiesHash['cookie_key'], 
															:QCSession => @cookiesHash['qcsession']
														},
												:proxy => @valor_proxy
											)
			arquivo.close
			rescue RestClient::ExceptionWithResponse => err
			raise err.response
        end

        def enviar_email(hash, entidade, test_id)
			conteudo = @arquivo.ler_arquivo('./XML/email.xml')
			xml_alterado = manipula_XML(conteudo, hash, 'email')
			return RestClient::Request.execute(
												:method => :post, 
												:url => 'https://almcielo.saas.hp.com/qcbin/rest/domains/'+@dominio+'/projects/'+@projeto+'/'+entidade.to_s+'/'+test_id.to_s+'/mail', 
												:payload => xml_alterado.to_s, 
												:headers => { 
															:'Content-Type' => 'application/xml', 
															:'Accept' => 'application/xml'
														}, 
												:cookies => {
															:LWSSO_COOKIE_KEY => @cookiesHash['cookie_key'], 
															:QCSession => @cookiesHash['qcsession']
														},
												:proxy => @valor_proxy
											)
			rescue RestClient::ExceptionWithResponse => err
			raise err.response		
		end

        def manipula_XML(conteudo, hash, tipo)
			novo_node_xml = nil
			@conteudo_xml = Nokogiri::XML(conteudo).root
			hash.each do |chave, valor|
			  case tipo
			    when 'run', 'instance_test', 'alterar_status_instance_test'
				  conteudo_novo_xml = @conteudo_xml.at_xpath("//Entity/Fields/Field[@Name='#{chave}']/Value")
			    when 'email'
				  conteudo_novo_xml = @conteudo_xml.at_xpath("//mail/#{chave}")
			  end
			  conteudo_novo_xml.content = valor
			  @conteudo_xml.to_xml
			end
			return @conteudo_xml
		end

        def sub_maiusculas(var)
        	return var.sub(/^./, &:upcase)
    	end	      

		def obter_IP
			Socket.ip_address_list.detect{|intf| intf.ipv4_private?}
		end

		def verifica_IP
			@ip = obter_IP.ip_address
			# case @ip[0...6]
				# when '10.10.' #Rede Spread
					@valor_proxy = nil
				# else 		  #Rede Cielo
					# @valor_proxy = 'http://proxypac:8080/'
			# end
		end

       end
end
