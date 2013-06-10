module VehicleData
  class Makes < VehicleData::Base
    class << self
      def get_all
        self.new({:method => 'makes.getAll'}).send_request
      end

      def get_info(options={})
        self.new({:method => 'makes.getInfo'}).send_request
      end
    end
  end
end