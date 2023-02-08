Quando('eu utilizo o teclado') do
    visit ''

    find('input[placeholder="BUSCAR NO SITE"]').send_keys(:page_down)
    find('button[value="fechar"]').send_keys(:enter)

end
  