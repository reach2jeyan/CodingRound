require 'watir'
require 'watir-scroll'
require 'yaml'
require_relative '../../../Desktop/features/support/env'
require 'headless'
headless = Headless.new
headless.start


Before do
  configurationvalidate
end






