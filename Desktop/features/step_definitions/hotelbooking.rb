Given(/^I land on hotels tab successfully$/) do
  @browser.a(:title, 'Find hotels in destinations around the world').click
  raise if @browser.url != 'https://www.cleartrip.com/hotels'
end

Then(/^I enter "([^"]*)" locality in the search field$/) do |arg|
  @browser.element(:id, 'Tags').send_keys(arg)
end

When(/^I choose "([^"]*)" in the guest field$/) do |arg|
  @browser.element(:id , 'travellersOnhome').click
  travelerseelect = @browser.element(:value, '2').text
  @browser.element(:value, '2').click if travelerseelect == arg

end