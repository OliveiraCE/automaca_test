Quando('eu faço um upload de um arquivo.') do
    visit 'https://designsystem.digital.gov/components/file-input/'    

    attach_file('file-input-single', '/home/igor/estudo/capybara/features/upload.png', make_visible: true)
    
    @foto = File.join(Dir.pwd, 'features/upload.png')
    attach_file('file-input-wildcard', @foto)
end