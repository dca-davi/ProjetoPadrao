class RestCall < ALM::REST

    def initialize
        # to implement when necessary
    end

    def obter_dados_ALM(nome_release, nome_testset, nome_ciclo, nome_cenario)
        @utils = Utils.new
	    @dados_ct = @utils.obtem_dados_ct('RELEASE_NAME', 'TESTSET_NAME', 'CYCLE_NAME', 'TEST_NAME', nome_release, nome_testset, nome_ciclo, nome_cenario)

        @test_release = @dados_ct['RELEASE_NAME']
        @test_testset = @dados_ct['TESTSET_NAME']
        @test_cycle = @dados_ct['CYCLE_NAME']
        @test_id = @dados_ct['TEST_ID'].to_i
        @test_instance_id = @dados_ct['TEST_INSTANCE_ID'].to_i
        @test_set_id = @dados_ct['TEST_SET_ID'].to_i
        @test_type = @dados_ct['TEST_TYPE']
        @test_name = @dados_ct['TEST_NAME']
    end

    def conectar_ALM
        @alm_rest = ALM::REST.new('CIELO', 'PJ_000212_BoB_Best_of_Both')
	    @alm_rest.autenticar('automation.spr', 'Automation1234')
    end

    def desconectar_ALM
         @alm_rest.desconectar
    end

    def criar_run_ALM
        @criar_run = @alm_rest.criar_run(Hash[
											'name' => @test_name,
											'test-id' => @test_id,
											'testcycl-id' => @test_instance_id,
                                            'cycle-id' => @test_set_id,
											'subtype-id' => 'hp.qc.run.' + @test_type,
											'owner' => 'automation.spr',
											'status' => 'Not Completed',
											'user-01' => 'Real'
											]
										)
        @run_id = @alm_rest.obter_valor_XML('id', @criar_run)
    end

    def criar_step_ALM(nome_passo, mensagem_erro="", status_run)
        case status_run
            when 'Passed'
                descricao = @alm_rest.sub_maiusculas(nome_passo)
            when 'Failed'
                descricao = @alm_rest.sub_maiusculas(nome_passo) + ' (Erro: ' + mensagem_erro + ')'
        end
        @alm_rest.criar_step(Hash[
                                'execution-date' =>@utils.formata_data_atual('aaaa-mm-dd'),
                                'description' => @alm_rest.sub_maiusculas(descricao),
                                'name' => @alm_rest.sub_maiusculas(nome_passo),
                                'test-id' => @test_id,
                                'status' => status_run,
                                'parent-id' => @run_id
                                ]
                            )
    end

    def enviar_email_ALM(nome_email)
        @alm_rest.enviar_email(Hash[
                                    'to-recipients' => nome_email,
                                    'subject' => 'CT ' + @test_name + ', FALHOU.',
                                    'comment' => '<h3>ATENÇÃO</h3>
                                                    <p>O seguinte caso de teste <b><font color="#FF0000">falhou: <br /></br />"' + @test_name + '" - Ciclo "' + @test_cycle + '"</font></b></p>
                                                    <p>A falha ocorreu no step: <b><font color="#FF0000">' + @step_name.capitalize + '</font></b>,
                                                    <p>com o seguinte erro técnico: <b><font color="#FF0000">' + scenario.exception.message + '</font></b>.
                                                    <br />
                                                    <p>Obrigado.</p>'
                                    ],
                                    'tests',
                                    @test_id
                                )
    end

    def atualizar_run_ALM(status_run)
        @alm_rest.atualizar_run(Hash[
                                    'id' => @run_id,
                                    'status' => status_run
                                    ]
                                )
    end

    def enviar_evidencia_ALM(entidade, nome_teste)
        @alm_rest.enviar_evidencia(Hash[
										'caminho_arquivo' => "./Reports/#{nome_teste}.html",  
										'run_id' => @run_id,
										'entidade' => entidade
										]
									)
    end

end
