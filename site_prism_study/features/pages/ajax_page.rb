class AjaxPage < SitePrism::Page
    set_url '/buscaelementos/botoes'

    element :botao, "#teste"
    element :mensagem, '#div1'

    def clicar_botao
        has_botao? # tem que colocar a interrocação para o valor lógico
        botao.click
    end
end