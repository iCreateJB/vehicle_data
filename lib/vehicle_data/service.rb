module VehicleData
  class Service < VehicleData::Base

    class << self
      def get_support_functions()
        request = self.new()
        request.data.merge!({:f => 'service.getSupportedFunctions'})
        request.send_request
      end
    end
  end
end