# require 'capybara/cucumber' Foi colocado dessa forma para não finalizar um cenario.
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
    # selenium_chrome
    config.default_driver = :selenium_chrome
    config.app_host = 'https://al.equatorialenergia.com.br/'
    config.default_max_wait_time = 5
end