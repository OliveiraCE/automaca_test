
Quando('eu faço cadastro.') do
    visit('https://siap.educacao.go.gov.br/login.aspx?ReturnUrl=%2f')
    fill_in(id: 'txtLogin', with: '04064481160')
    fill_in(id: 'txtSenha', with: 'igor2007') # Utilizei um site pronto para realizar o teste
    find('#btnLogon').click
    find('div[class="menu_trigger"]').click #Utilização do Dropdown
    click_link('Definição da Escola')
    select 'COL EST ADAGUISMAR DE OLIVEIRA', from: 'ddlEscola' 
    # A função select substitui os dois clicks que a seguir comentados.
    # find('select[id="ddlEscola"]').click
    # find('option[value="2652"]').click
    find('input[value="Definir"]').click

    # sleep(4)
end

Então('eu verifico se fui cadastrado.') do
    texto = find('span[id="lblNomeEntidade"]')
    expect(texto.text).to eq "Col Est Adaguismar De Oliveira"
end