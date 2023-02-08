
Before do 
    puts 'Estou sendo executado antes de cada cenario.'
    @soma = 5 + 5
end

After do
    puts 'Estou sendo executado depois de cada cenario.'
end

Before '@começo' do
    puts 'Teste de início com tag.'
end

After '@final' do
    puts 'Teste do final com tag.'
end