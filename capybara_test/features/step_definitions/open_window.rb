
Quando('eu abro uma janela.') do
    visit 'informacoes-gerais/responsabilidade-social/plataforma-emais/'
    
    window = window_opened_by do
        click_on('relatório de sustentabilidade')
    end

    within_window window do 
        expect(current_url).to eql 'https://ri.equatorialenergia.com.br/pt-br/divulgacao-e-resultados/relatorios-anuais-e-de-sustentabilidade/'
        @message = find('#relatorios_anuais_e_de_sustentabilidade')
        expect(@message.text).to eql 'Relatórios Anuais e de Sustentabilidade'
    end
    window.close
    
    # Segundda opção
    click_on('relatório de sustentabilidade')

    switch_to_window windows.last

    expect(current_url).to eql 'https://ri.equatorialenergia.com.br/pt-br/divulgacao-e-resultados/relatorios-anuais-e-de-sustentabilidade/'
    @message = find('#relatorios_anuais_e_de_sustentabilidade')
    expect(@message.text).to eql 'Relatórios Anuais e de Sustentabilidade'
    window.last.close
end


Quando('eu entro no alert eu verifico se faço a ação.') do
    visit 'https://igor-web.maxstudio.com.br/sales'
    find('a[data-method="delete"][href="/sales/4"]').click
    page.dismiss_confirm
end
  
