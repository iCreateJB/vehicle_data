module VehicleData
  class Vehicles < VehicleData::Base
    class << self
      def get_makes(year)
        self.new({:f => 'vehicles.getMakes', :year => year}).send_request
      end

      def get_models(year, make)
        self.new({:f => 'vehicles.getModels', :year => year, :make => make}).send_request
      end

      def get_trims(year, make, model)
        self.new({:f => 'vehicles.getTrims', :year => year, :make => make, :model => model}).send_request
      end

      def get_style_trims(options={})
        options.merge({:f => 'vehicles.getStyleTrims'})
        self.new(options).send_request
      end

      def get_transmissions(options={})
        options.merge({:f => 'vehicles.getStyleTrims'})
        self.new(options).send_request
      end
    end
  end
end
