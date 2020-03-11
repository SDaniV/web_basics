# require_relative '../parser/pages/sportua/sportua_parser.rb'
require 'require_all'
require_all 'parser'

RSpec.describe 'MainNews' do
  it('Test') do
    football_page = SportUAFootballPage.new
    football_page.load_main_page
    football_page.go_to_football_page
    post_title = football_page.find_post_title('#top > div.cols > section > div:nth-child(1) > div > div.main-post__title.main-post__title_dissc > a')
    expect(post_title).to be_truthy
  end
  
  # it('takes main basketball post from SportUA') do
  #   sportua_parser = SportUAMainPage.new
  #   sportua_parser.load_driver
  #   sportua_parser.load_sportua
  #   sportua_parser.go_to_basketball_page
  #   post_title = sportua_parser.get_newest_post_title
  #   expect(post_title).to be_truthy
  # end
  #
  # it('takes main football post from SportAnalytic') do
  #   sportanalytic_parser = SportAnalyticParser.new
  #   sportanalytic_parser.load_driver
  #   sportanalytic_parser.load_sportanalytic
  #   sportanalytic_parser.go_to_football_page
  #   post_title = sportanalytic_parser.get_main_football_post_title
  #   expect(post_title).to be_truthy
  # end
  #
  # it('takes main basketball post paragraph from SportUA') do
  #   sportua_parser = SportUAParser.new
  #   sportua_parser.load_driver
  #   sportua_parser.load_sportua
  #   sportua_parser.go_to_basketball_page
  #   post_title = sportua_parser.get_newest_post_title
  #   post_first_paragraph = sportua_parser.get_first_paragraph
  #   link = sportua_parser.get_link_to_full_post
  #   puts "#{post_title} \n post_first_paragraph \n \
  #                Детальніше за посиланням: \n + link"
  #   expect(post_title).to be_truthy
  # end

end
