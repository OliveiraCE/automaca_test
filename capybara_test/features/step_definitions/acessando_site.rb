
Quando('acesso uma url.') do
    visit('fornecedores/')
end

Então('eu verifico se estou na pagina correta.') do
    expect(page).to have_current_path('https://al.equatorialenergia.com.br/fornecedores/', url: true)
end