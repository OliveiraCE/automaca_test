    Quando('eu multiplico {int} com o {int}') do |laranja, valor|
        @multiplicação = laranja * valor
    end
    
    Então('eu analiso o {int} da multiplicação.') do |resultado|
        expect(@multiplicação).to eq resultado        
    end