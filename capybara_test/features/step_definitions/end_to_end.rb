
Quando("eu cadastro o usuário.") do
    visit 'http://localhost:3000/users/new'
    fill_in(id: 'user_name', with: 'Igor')
    find('#user_lastname').set('Menezes')
    fill_in(id: 'user_email', with:'igor@gmail.com')
    find('input[value="Criar"]').click
  end
  
  Então("verifico se o usuário foi cadastrado.") do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
  end
  
  Quando("edito um usuário.") do
sleep(5)
find('.btn.waves-light.blue').click
  end
  
  Então("verifico se o usuário foi editado.") do

  end