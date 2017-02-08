Before do |scenario|
    case ENV['BROWSER']
        when 'ie'
            browser = Watir::Browser.new :ie
            browser.timeout = 240
        when 'ff'
            browser = Watir::Browser.new :ff
        when 'chrome'
            browser = Watir::Browser.new :chrome
        else
            browser = Watir::Browser.new :ie
    end

    $release = ENV['RELEASE_ALM']
    $testset = ENV['TESTSET_ALM']
    $perfil = ENV['PERFIL']
    $ciclo = ENV['CICLO_ALM']
    $ALM = ENV['EVIDENCIA_ALM']

    $browser = browser

    $tag_cenario = scenario.source_tag_names
    $cenario_name = scenario.name

    $step_name_index = 0
    $passos = scenario.test_steps.map(&:name)
    $passos.delete('AfterStep hook')

    if $ALM != 'N'
        $rest_ALM = RestCall.new
        $rest_ALM.conectar_ALM
        $rest_ALM.obter_dados_ALM($release, $testset, $ciclo, $cenario_name)
        $rest_ALM.criar_run_ALM
    end
end

AfterStep do
    Utils.new.autoit_mover_mouse
    embed("data:image/png;base64,#{$encoded_img}", 'image/png') unless $encoded_img.nil?
    $encoded_img = nil

    if $ALM != 'N'
        $step_name = $passos[$step_name_index]
	    $rest_ALM.criar_step_ALM($step_name, nil, 'Passed')
        $step_name_index += 1
    end
end

After do |scenario|
    if scenario.failed?
        # $email_recipient = 'email$email.com' # digite o email que receberá alerta de falha de execução do teste.
        sleep 1
        $encoded_img = $browser.driver.screenshot_as(:base64)
        embed("data:image/png;base64,#{$encoded_img}", 'image/png') unless $encoded_img.nil?

        $encoded_img = nil

        $step_name = $passos[$step_name_index]
        $status_run = 'Failed'

        if $ALM != 'N'
            $rest_ALM.criar_step_ALM($step_name, scenario.exception.message, $status_run)
			# $rest_ALM.enviar_email_ALM($email_recipient)
        end
    else
        $status_run = 'Passed'
     end

    $caminho_log_execucao = ENV['CAMINHO_LOG_EXECUCAO']
    if $caminho_log_execucao != nil
        Utils.new.adicionar_registro_log_execucao($caminho_log_execucao, $cenario_name, $status_run, $data_teste, $hora_teste, scenario.exception)
    end

    $browser.close
end

at_exit do
    begin
    if $ALM != 'N'
      $rest_ALM.atualizar_run_ALM($status_run)
      $rest_ALM.enviar_evidencia_ALM('runs', "Direito #{$direito_evidencia} - Perfil #{$perfil}")
      $rest_ALM.desconectar_ALM
    end
  rescue => e
    #nothing to do because it will appear on report.
  end 
end
