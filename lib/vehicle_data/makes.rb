module VehicleData
  class Makes < VehicleData::Base
    class << self
      def get_all
        self.new({:f => 'makes.getAll'}).send_request
      end

      def get_info(make)
        self.new({:f => 'makes.getInfo', :make => make}).send_request
      end
    end
  end
end