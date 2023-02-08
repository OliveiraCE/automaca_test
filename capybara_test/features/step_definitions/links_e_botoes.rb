Quando('clico em botões') do
    visit '/'
    click_on('Cadastre-se agora')
    visit('/')
    click_button(class: 'btn-hi')
    visit('/fornecedores')
    find('#menu-item-29629').click
    visit '/'
    find('#menu-item-29629').right_click
    visit '/'
    click_link('Pagar com cartão ')

    sleep(5)
end