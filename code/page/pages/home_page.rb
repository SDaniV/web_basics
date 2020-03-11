require 'page-object'

class HomePage
  include PageObject

  page_url 'https://sport.ua/uk'.freeze

  # link(:football_page, css: '#top > header > nav > ul > li:nth-child(1) > a')
end
