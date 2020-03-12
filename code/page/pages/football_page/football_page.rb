require 'page-object'

class FootballPage
  include PageObject

  span(:countries, css: '#top > header > div > div.nav-down-division-list > ul > li:nth-child(3) > span')
  h1(:football_tag, css: '.breadcrumbs > span:nth-child(1) > h1:nth-child(1)')
  unordered_list(:main_posts, css: '.three_news > ul:nth-child(2)')

  def count_number_of_top_news
    # TODO: find the way to get number of child elements usign POG
    main_posts.count
  end
end
