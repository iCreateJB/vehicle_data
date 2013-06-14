require 'rubygems'
require 'bundler/setup'
require 'securerandom'
require 'vehicle_data' # and any other gems you need

RSpec.configure do |config|
  config.order = "random"
end

# Stub configuration ( This will naturally be held in a configuration file )
VehicleData.configure do |config|
  config.app_key = "#{SecureRandom.hex(10)}"
  config.secret  = "#{SecureRandom.hex(15)}"
end