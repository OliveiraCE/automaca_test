Quando('realizo a média geral.') do
    @media = @soma / 2
end

Então('resultado da média geral.') do
    expect(@media).to eq 5
end