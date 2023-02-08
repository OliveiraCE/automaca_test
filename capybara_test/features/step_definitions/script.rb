Quando('eu uso um script') do
    visit ''

    page.execute_script("window.scrollBy(0,1500)")
    @result = page.evaluate_script('2+2')
    puts @result
end