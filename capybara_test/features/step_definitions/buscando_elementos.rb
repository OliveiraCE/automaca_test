
Quando('eu visito uma url.') do
    visit('sua-conta/historico-de-consumo/')
end

Então('eu verifico se encontrei os elementos.') do
    # all busca todos os elementos que contém o all.
    page.all('.btn')
    #buscando um elemento mapeado.
    find('#expand-login')
    # busca um elemento mapeado pelo id
    find_by_id('expand-login')
    # busca um botão mapeado pela classe
    find_button(class: 'btn-close lgpd-btn-close')
    # Busca o primeiro elemento que contem o elemento mapeado.
    first('.btn')
    # Busca o link
    find_link(href: 'https://al.equatorialenergia.com.br/pagamento-de-faturas/')
end