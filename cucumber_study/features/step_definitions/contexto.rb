    Dado('que eu tenha {int} laranjas na sacola.') do |quantidade|
       @laranjas = quantidade
    end
    
    Quando('eu retiro {int} laranjas da sacola.') do |pegar|
        @retirei = pegar
        @restante = @laranjas - @retirei
    end
    
    Então('eu tenho um montante de {int} laranjas na sacola.') do |resultado|
        expect(@restante).to eq resultado
    end

    Quando('eu coloco {int} laranjas da sacola.') do |coloco|
        @coloquei = coloco
        @montante = @laranjas + @coloquei
    end

    Então('eu tenho no total {int} laranjas na sacola.') do |resultado1|
        expect(@montante).to eq resultado1
    end