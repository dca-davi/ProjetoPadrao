# require 'rest-client'
# require 'base64'
# require 'nokogiri'

# enc = Base64.encode64('automation.spr:Automation1234')
# authHeader = 'Basic '+enc.to_s
# $test_id = '215204'

# response = RestClient::Request.execute(
# 	:method => :get, 
# 	:url => 'https://almcielo.saas.hp.com/qcbin/authentication-point/authenticate',
# 	:headers => {:'Authorization' => authHeader } 
# 	#:proxy => 'http://proxypac:8080/'
# )

# # Get ALM token
# @token = response.cookies.values[0]

# cookiesresponse = RestClient::Request.execute(
# 	:method => :post, 
# 	:url => 'https://almcielo.saas.hp.com/qcbin/rest/site-session', 
# 	:cookies => {:LWSSO_COOKIE_KEY => @token}
# 	)

# ######### FIM LOGIN #########	

# # begin
# # 	#GET ENTITIES
# # 	entidade = RestClient::Request.execute(
# # 		:method => :get,  
# # 		:url => 'https://almcielo.saas.hp.com/qcbin/rest/domains/CIELO/projects/PJ_000212_BoB_Best_of_Both/customization/entities/run/fields?required=true', 
# # 		#:payload => $xml_run,
# # 		:headers => {
# # 					:'Content-Type' => 'application/xml', 
# # 					:'Accept' => 'application/xml'
# # 				},
# # 		:cookies => {
# # 					:LWSSO_COOKIE_KEY => cookiesresponse.cookies.values[2],
# # 					:QCSession => cookiesresponse.cookies.values[3]
# # 				}
# # 		#:proxy => 'http://proxypac:8080/'
# # 		)
# # 		puts entidade
# # rescue RestClient::ExceptionWithResponse => err
# # 	puts err.response
# # end

# # abort

# #XML RUN
# $xml_run = %{<Entity Type="run">
# 			<Fields>
# 				<Field Name="name">
# 					<Value>TesteEdu</Value>
# 				</Field>
# 				<Field Name="test-id">
# 					<Value>132372</Value>
# 				</Field>
# 				<Field Name="testcycl-id">
# 					<Value>#{$test_id.to_s}</Value>
# 				</Field>
# 				<Field Name="subtype-id">
# 					<Value>hp.qc.run.QUICKTEST_TEST</Value>
# 				</Field>
# 				<Field Name="owner">
# 					<Value>Automation.spr</Value>
# 				</Field>
# 				<Field Name="status">
# 					<Value>Passed</Value>
# 				</Field>
# 				<Field Name="user-01">
# 					<Value>Real</Value>
# 				</Field>
# 			</Fields>
# 		</Entity>}

# begin
# 	#POST RUN
# 	post_run = RestClient::Request.execute(
# 		:method => :post,  
# 		:url => 'https://almcielo.saas.hp.com/qcbin/rest/domains/CIELO/projects/PJ_000212_BoB_Best_of_Both/runs', 
# 		:payload => $xml_run,
# 		:headers => {
# 					:'Content-Type' => 'application/xml', 
# 					:'Accept' => 'application/xml'
# 				},
# 		:cookies => {
# 					:LWSSO_COOKIE_KEY => cookiesresponse.cookies.values[2],
# 					:QCSession => cookiesresponse.cookies.values[3]
# 				}
# 		#:proxy => 'http://proxypac:8080/'
# 		)
# 		puts post_run.code
# 	$run_id = Nokogiri::XML(post_run).xpath("//Entity/Fields/Field[@Name='id']/Value").text
# rescue RestClient::ExceptionWithResponse => err
# 	puts err.response
# end

# abort 



# #XML RUN
# $xml_run = %{<Entity Type="run">
# 			<Fields>
# 				<Field Name="id">
# 					<Value>#{$run_id.to_s}</Value>
# 				</Field>
# 				<Field Name="status">
# 					<Value>Passed</Value>
# 				</Field>
# 			</Fields>
# 		</Entity>}

# begin
# 	#POST RUN
# 	update_run = RestClient::Request.execute(
# 		:method => :put,  
# 		:url => 'https://almcielo.saas.hp.com/qcbin/rest/domains/CIELO/projects/PJ_000212_BoB_Best_of_Both/runs/'+$run_id.to_s, 
# 		:payload => $xml_run,
# 		:headers => {
# 					:'Content-Type' => 'application/xml', 
# 					:'Accept' => 'application/xml'
# 				},
# 		:cookies => {
# 					:LWSSO_COOKIE_KEY => cookiesresponse.cookies.values[2],
# 					:QCSession => cookiesresponse.cookies.values[3]
# 				}
# 		#:proxy => 'http://proxypac:8080/'
# 		)
# 	puts update_run.code
# rescue RestClient::ExceptionWithResponse => err
# 	puts err.response
# end

# abort

# (0..5).each do |contador|
# 	#XML RUN STEP
# 	$xml_run_step = %{<Entity Type="run-step">
# 						<Fields>
# 							<Field Name="execution-date">
# 								<Value>2016-12-13</Value>
# 							</Field>
# 							<Field Name="description">
# 								<Value>Descrição #{contador}</Value>
# 							</Field>
# 							<Field Name="name">
# 								<Value>Step #{contador}</Value>
# 							</Field>
# 							<Field Name="test-id">
# 								<Value>132372</Value>
# 							</Field>
# 							<Field Name="status">
# 								<Value>Passed</Value>
# 							</Field>
# 							<Field Name="parent-id">
# 								<Value>#{$run_id.to_s}</Value>
# 							</Field>
# 						</Fields>
# 					</Entity>}

# 	begin
# 		#POST RUN STEP
# 		post_run_step = RestClient::Request.execute(
# 			:method => :post,  
# 			:url => 'https://almcielo.saas.hp.com/qcbin/rest/domains/CIELO/projects/PJ_000212_BoB_Best_of_Both/run-steps', 
# 			:payload => $xml_run_step,
# 			:headers => {
# 						:'Content-Type' => 'application/xml', 
# 						:'Accept' => 'application/xml'
# 					},
# 			:cookies => {
# 						:LWSSO_COOKIE_KEY => cookiesresponse.cookies.values[2],
# 						:QCSession => cookiesresponse.cookies.values[3]
# 					}
# 			#:proxy => 'http://proxypac:8080/'
# 			)
# 		#puts post_run_step.code
# 	rescue RestClient::ExceptionWithResponse => err
# 		puts err.response
# 	end

# end

# arquivo = File.open('/Reports/Direito CANAL_BACKOFFICE_VER - Perfil Antecipacao_de_Vendas_Exec_Comercial_Analista.html','rb')

# begin
# 	#$run_id = 2889
# 	#POST RUN ATTACHMENT
# 	post_run_attach = RestClient::Request.execute(
# 		:method => :post,  
# 		:url => 'https://almcielo.saas.hp.com/qcbin/rest/domains/CIELO/projects/PJ_000212_BoB_Best_of_Both/runs/'+$run_id.to_s+'/attachments', 
# 		:payload => arquivo,
# 		:headers => {
# 					:'Content-Type' => 'application/octet-stream',
# 					:'Slug' => File.basename(arquivo)
# 				},
# 		:cookies => {
# 					:LWSSO_COOKIE_KEY => cookiesresponse.cookies.values[2],
# 					:QCSession => cookiesresponse.cookies.values[3]
# 				}
# 		#:proxy => 'http://proxypac:8080/'
# 		)
# 	puts post_run_attach
# 	arquivo.close
# rescue RestClient::ExceptionWithResponse => err
# 	puts err.response
# end

# #######################################################################
# ## SAMPLES ############################################################
# #######################################################################
	
# # #GET
# # get_values = Nokogiri::XML(RestClient::Request.execute(
# 	# :method => :get,  
# 	# :url => 'https://almcielo.saas.hp.com/qcbin/rest/domains/CIELO/projects/PJ_000212_BoB_Best_of_Both/customization/entities/test-set/fields?required=true', 
# 	# :cookies => {
# 				# :ALM_USER => cookiesresponse.cookies.values[0],
# 				# :JSESSIONID => cookiesresponse.cookies.values[1],
# 				# :LWSSO_COOKIE_KEY => cookiesresponse.cookies.values[2],
# 				# :QCSession => cookiesresponse.cookies.values[3],
# 				# :'XSRF-TOKEN' => cookiesresponse.cookies.values[4]
# 			# },
# 	# :proxy => 'http://proxypac:8080/'
# 	# )
# # )
