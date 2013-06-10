module VehicleData
  class Vin < VehicleData::Base
    class << self
      def decode(vin)
        self.new({:method => 'vin.decode'}).send_request
      end
    end
  end
end