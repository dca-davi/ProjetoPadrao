class Informacoes_financeiras
    @@utils = Utils.new

def validar_frame_resumo_financeiro(texto)
    sleep 2
    case texto
    when "Valor do intercâmbio - detalhado"
    result = if $browser.th(id: 'extrato__vendas_detalhado:idTbDetalhadoVendas:0:j_idt371:j_idt374').exist?
                 true
             else
                 false
             end
           end

    sleep 3
    $encoded_img = $browser.driver.screenshot_as(:base64)

    result
  end
end
