Quando('clico no botão.') do
    visit '/'
    find('li[id="menu-item-29629"]').click
    sleep(3)
end
  
Então('verifico se o texto apareceu na tela com sucesso.') do
    @texto =  find('li[class="active"]')
    expect(@texto.text).to eql 'Agência Web'
    # page.assert_text(text,"Agência Web"), não funcionou.
    page.has_text?('Agência Web')
    have_text('Agência Web')
end