Given(/^I go to the sign in page successfully$/) do
  @browser.element(:linktext, 'Your trips').click
  @browser.element(:id, 'SignIn').click

end

Then(/^I assert for identifiers:$/) do |table|
  # table is a table.hashes.keys # => [:There were errors in your submission]
  data = table.hashes
  data.each do |row|
    row.each do |key,value|
      errormessage = @browser.element(:id, 'errors1').text
      raise if errormessage != value
    end
  end
end