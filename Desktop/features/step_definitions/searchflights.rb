require 'watir'
require 'watir-scroll'
require 'yaml'

elements = YAML::load_file('../test_data.yml')
puts elements

When(/^I tap on element "([^"]*)"$/) do |arg|
  @browser.element(:id, arg).click
end


And(/^I enter "([^"]*)" in the From field$/) do |arg|
  @browser.element(:id, 'FromTag').send_keys(arg)
end

Then(/^I wait for sometime$/) do
  sleep 2
end


And(/^I enter "([^"]*)" in the To field$/) do |arg|
  @browser.element(:id, 'ToTag').send_keys(arg)
end

And(/^I choose a date after the current date$/) do
  @browser.div(:class , 'span span15 datePicker').click
  defaultdate = @browser.a(:class , 'ui-state-default').text
  puts "Selecting date #{defaultdate}"
  @browser.a(:class , 'ui-state-default').click

end

And(/^I enter "([^"]*)" in the From field and verify autocomplete$/) do |arg|
  @browser.element(:id, 'FromTag').send_keys(arg)

end


Then(/^I choose "([^"]*)" adults travelling$/) do |arg|
  @browser.element(:id, 'Adults').click
  @browser.element(:value , arg).click
end

Then(/^I print out the search summary$/) do
  @browser.divs(:class , 'colZero col24 onward leg').each do |div|
    puts div
  end
end