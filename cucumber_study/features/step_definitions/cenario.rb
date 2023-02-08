Dado('eu tenho {int} laranjas.') do |valor1|
# Dado('eu tenho {float} laranjas.') do |float|
    @laranjas = valor1 
end

Quando('eu como {int} laranjas.') do |valor2|
# Quando('eu como {float} laranjas.') do |float|
    @comer = valor2
    @resultados = @laranjas - @comer
end

Então('eu analiso quantas laranjas restaram.') do
# Então('me restam {float} laranjas.') do |float|
    expect(@resultados).to eq 8
end

Quando('eu compro {int} laranjas.') do |valor3|
# Quando('eu compro {float} laranjas.') do |float|
    @compras = valor3
    @compratotal= @compras + @laranjas
end

Então('Qual o total de laranjas.') do 
# Então('me restaram {float} laranjas.') do |float|
    expect(@compratotal).to eq 15
end