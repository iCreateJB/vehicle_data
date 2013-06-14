module VehicleData
  class Service < VehicleData::Base

    class << self
      def get_support_functions()
        self.new({:f => 'service.getSupportedFunctions'}).send_request
      end
    end
  end
end