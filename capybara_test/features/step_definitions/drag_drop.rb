Dado('que eu estou na tela de drag e drop.') do
    visit 'http://localhost:3000/iteracoes/draganddrop'
end
  
Quando('eu mover o drag.') do
    @element1 = find('#winston')
    @element2 = find('#dropzone')
    @element1.drag_to(@element2)
    sleep(5)
end 