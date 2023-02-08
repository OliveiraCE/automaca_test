Quando('clico no botão') do
    @ajax = AjaxPage.new
    @ajax.load
    @ajax.clicar_botao
end
  
Então('verifico se clicou') do
    @ajax.has_mensagem? # wait_for não está funcionando
    expect(@ajax.mensagem.text).to eql 'Você Clicou no Botão!'
end