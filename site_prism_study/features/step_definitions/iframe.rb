Quando('preenchendo campos.') do
    @paginaiframe = PaginaPadrao.new

    @paginaiframe.load

    @paginaiframe.preencher_campo do |iframe|
        iframe.email.set 'igor.oliveira@gmail.com'
        iframe.telefone.set '993851249'
    end

    sleep(5)
end