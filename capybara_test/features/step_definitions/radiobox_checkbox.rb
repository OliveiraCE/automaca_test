Quando('eu marco um radiobox e checkbox') do
    visit 'http://penta.ufrgs.br/edu/forms/tut212.html'
    find('input[value="ginastica"]').click
    find('input[value="futebol"]').click
    find('input[value="volei"]').click
    find('input[value="natacao"]').click
    # check('natacao', allow_label_click: true) Nessa pagina não consegui realizar o teste
    find('input[value="fem"]').click
    
    sleep(5)
end