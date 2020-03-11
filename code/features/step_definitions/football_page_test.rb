Given(/^I am on home page/) do
  visit(HomePage)
end

When("I click on Football tab") do
  on(TopBar).football_page
end

Then("I see correct number of top news") do
  expect(on(FootballPage).count_number_of_top_news).to be_eq(3)
end

Then(/^I am able to find countries tab/) do
  expect(on(FootballPage).countries).to be_truthy
end

Then(/^Football page has the correct tag/) do
  expect(on(FootballPage).football_tag).to be == "Футбол"
end
