class PaginaIframe < SitePrism::Page 
    element :email , '#Name-5'
    element :telefone , '#Telefonnummer-2'
end

class PaginaPadrao < SitePrism::Page
    set_url 'https://webflow.com/made-in-webflow/website/sarnmark-se'
    iframe :preencher_campo, PaginaIframe, '.css-1m4vocp'
end