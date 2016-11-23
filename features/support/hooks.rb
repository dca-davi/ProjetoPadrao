Before do |scenario|
    require_relative 'ALMRest.rb'

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

    $perfil = ENV['PERFIL']
    $ciclo = ENV['CICLO']
    $ALM = ENV['EVIDENCIA_ALM']
    $browser = browser
    $tag_cenario = scenario.source_tag_names
    $cenario_name = scenario.name

        @step_name_index = 0
        @passos = scenario.test_steps.map(&:name)
        @passos.delete('AfterStep hook')


    if $ALM != 'N'

        @utils = Utils.new
        @dados_ct = @utils.obtem_dados_ct('TEST_NAME', 'CYCLE_NAME', $cenario_name, $ciclo)

        $test_id = @dados_ct['TEST_ID'].to_i
        $test_instance_id = @dados_ct['TEST_INSTANCE_ID'].to_i
        $test_type = @dados_ct['TEST_TYPE']
        $test_name = @dados_ct['TEST_NAME']

        $alm_rest = ALM::REST.new('CIELO', 'PJ_000212_BoB_Best_of_Both')
        $alm_rest.autenticar('automation.spr', 'Automation1234')
        $criar_run = $alm_rest.criar_run(Hash[
                          'name' => $test_name,
                          'test-id' => $test_id,
                          'testcycl-id' => $test_instance_id,
                          'subtype-id' => 'hp.qc.run.' + $test_type,
                          'owner' => 'automation.spr',
                          'status' => 'Not Completed',
                          'user-01' => 'Real'
                          ])
        $run_id = $alm_rest.obter_valor_XML('id', $criar_run)
  end
end

AfterStep do
    embed("data:image/png;base64,#{$encoded_img}", 'image/png') unless $encoded_img.nil?
    $encoded_img = nil

    if $ALM != 'N'
        $step_name = @passos[@step_name_index]

        @utils = Utils.new
        $alm_rest.criar_step(Hash[
                    'execution-date' => @utils.formata_data_atual('aaaa-mm-dd'),
                    'description' => $step_name.capitalize,
                    'name' => $step_name.capitalize,
                    'test-id' => $test_id,
                    'status' => 'Passed',
                    'parent-id' => $run_id
                    ])
        @step_name_index += 1
  end
end

After do |scenario|
    if scenario.failed?
        sleep 1
        $encoded_img = $browser.driver.screenshot_as(:base64)
        embed("data:image/png;base64,#{$encoded_img}", 'image/png') unless $encoded_img.nil?

        $encoded_img = nil

        $step_name = @passos[@step_name_index]
        $status_run = 'Failed'
        if $ALM != 'N'
            @utils = Utils.new
            $alm_rest.criar_step(Hash[
                        'execution-date' => @utils.formata_data_atual('aaaa-mm-dd'),
                        'description' => $step_name.capitalize + ' (Erro: ' + scenario.exception.message + ')',
                        'name' => $step_name.capitalize,
                        'test-id' => $test_id,
                        'status' => $status_run,
                        'parent-id' => $run_id
                        ])
        end
    else
        $status_run = 'Passed'
     end
    $browser.close
end

at_exit do
    if $ALM != 'N'
        $alm_rest.atualizar_run(Hash[
            'id' => $run_id,
            'status' => $status_run
            ])
        $alm_rest.enviar_evidencia(Hash[
            'caminho_arquivo' => "./Reports/Direito #{$direito_evidencia} - Perfil #{$perfil}.html",
            'run_id' => $run_id,
            'entidade' => 'runs'
            ])
    end
end
