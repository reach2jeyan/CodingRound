require 'watir'
require 'report_builder'

@testdata = YAML::load_file('../test_data.yml')


def configurationvalidate
  app_url = ENV['URL']
  case ENV['BROWSER']
    when 'chrome'
      args = ["--disable-notifications"]
      @browser = Watir::Browser.new :chrome , :args => args , headless: false
      @browser.goto app_url
  end
end