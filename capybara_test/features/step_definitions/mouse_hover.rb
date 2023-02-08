Quando('eu seleciona o mouse hover.') do
    visit 'sua-conta/'
    find('#menu-item-29701').hover
    find('#menu-item-29699').hover
    find('#menu-item-29648').hover.click
    
end