module VehicleData
  class Vehicles < VehicleData::Base
    class << self
      def get_makes(options={})
        self.new({:method => 'vehicles.getMakes'}).send_request
      end

      def get_models(options={})
        self.new({:method => 'vehicles.getModels'}).send_request
      end

      def get_trims(options={})
        self.new({:method => 'vehicles.getTrims'}).send_request
      end

      def get_style_trims(options={})
        self.new({:method => 'vehicles.getStyleTrims'}).send_request
      end

      def get_transmissions(options={})
        self.new({:method => 'vehicles.getTransmissions'}).send_request
      end
    end
  end
end
