require 'page-object'

class TopBar
  include PageObject

  link(:football_page, css: '#top > header > nav > ul > li:nth-child(1) > a')
end
