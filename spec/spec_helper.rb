require 'rubygems'
require 'bundler/setup'
require 'securerandom'
require 'vehicle_data' # and any other gems you need

RSpec.configure do |config|
  config.order = "random"
end