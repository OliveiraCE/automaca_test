Quando('eu entro no iframe e preencho os campos.') do
    visit 'https://webflow.com/made-in-webflow/website/relume-cloneable'
sleep(0)
    within_frame(find('.css-1m4vocp')) do
    #   find('.button.hide-on-t-m.w-button').click
        click_on('get started')
    end
end
  
Quando('eu entro no modal eu verifico um texto.') do
    visit 'https://accessible-modal.webflow.io/'

    click_on('Open modal 1')

    within('#w-node-c911d013-aaf0-1d27-5771-d1fefac03ae8-94ac6913') do
        text = find('h2')
        expect(text.text).to eql 'This is modal 1'
        find('.modal-close_btn').click
    end
end