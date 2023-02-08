
Quando('eu divido os números {int}\/{int}.') do |valor1, valor2|
    @divisao = valor1 / valor2
end

Então('eu verifico o resultado da divisão.') do
    expect(@divisao).to eq 5    
end

Quando('eu multiplico dois números {int}*{int}.') do |valor3, valor4|
    @multiplica = valor3 * valor4
end

Então('eu verifico o resultado da multiplicação.') do
    expect(@multiplica).to eq 10
end