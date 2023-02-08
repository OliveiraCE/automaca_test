    Quando('eu somo {int} + {int}') do |valor1, valor2|
    # Quando('eu somo {int} e {float}') do |int, float|
    # Quando('eu somo {float} e {int}') do |float, int|
    # Quando('eu somo {float} e {float}') do |float, float2|
        @soma = valor1+valor2
    end
    
    Então('o resultado tem que {int}') do |resultado|
    # Então('o resultado tem que {float}') do |float|
        expect(@soma).to eq resultado
    end
    