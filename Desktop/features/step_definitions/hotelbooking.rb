Given(/^I land on hotels tab successfully$/) do
  @browser.element(:linktext , "Hotels")
  raise if @browser.url != 'https://www.cleartrip.com/hotels'
end

Then(/^I enter "([^"]*)" locality in the search field$/) do |arg|
  @browser.element(:id, 'SearchHotelsButton').send_keys(arg)
end

When(/^I choose "([^"]*)" in the guest field$/) do |arg|
  @browser.element(:id , 'travellersOnhome').click
  @browser.element(:value, arg).click
end