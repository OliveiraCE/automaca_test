Quando('acesso uma url.') do
    @home = PaginaInicial.new
    @home.load
end
  
  Então('verifico se estou na pagina inicial.') do
    expect(page).to have_current_path('http://localhost:3000/treinamento/home', url: true)
    sleep(5)
  end