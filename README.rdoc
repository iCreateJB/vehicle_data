{<img src="https://travis-ci.org/iCreateJB/vehicle_data.png" />}[https://travis-ci.org/iCreateJB/vehicle_data]
# VehicleData

## Installation

Add this line to your application's Gemfile:

    gem 'vehicle_data'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vehicle_data

## Usage

  VehicleData::Service.get_support_functions

  {
    "version"=>"0.2", 
    "functions"=>[
      "makes.getAll", 
      "makes.getInfo", 
      "service.getSupportedFunctions", 
      "vehicles.getMakes", 
      "vehicles.getModels", 
      "vehicles.getTrims", 
      "vehicles.getStyleTrims", 
      "vehicles.getTransmissions", 
      "vin.decode"
    ]
  } 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
