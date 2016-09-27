class Operacoes_Rejeicao

  def selecione_combo(frame, item)

    case  frame
    when 'Situação da solicitação'
      if $browser.div(:id => "cmbRequestSituation").exist?
        $browser.div(:id => "cmbRequestSituation").click
        sleep 1
        result = true
      else
        result = false
      end

    when 'Tipo de solicitação'
      if $browser.div(:id => "cmbRequestType_label").exist?
      $browser.div(:id => "cmbRequestType_label").click
      sleep 1
      result = true
    else
      result = false
    end
  end

  case item
  when 'Rejeitada'
    if $browser.li(:text => "Rejeitada").exist?
      $browser.li(:text => "Rejeitada").click
      sleep 1
      result = true
    else
      reult = false
    end

      when 'Concluída'
        if $browser.li(:text => "Rejeitada").exist?
          $browser.li(:text => "Rejeitada").click
          sleep 1
          result = true
        else
          result = false
        end
      end
    end

end
