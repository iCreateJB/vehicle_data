require 'rubygems'
require 'bundler/setup'

require 'vehicle_data' # and any other gems you need

RSpec.configure do |config|
  config.use_transactional_fixtures = false
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
end