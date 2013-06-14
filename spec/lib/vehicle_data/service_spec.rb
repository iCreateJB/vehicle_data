require 'spec_helper'

describe VehicleData::Service do 
  subject{ VehicleData::Service }

  it { subject.should respond_to(:get_support_functions) } 

  context ".get_support_functions" do 
    before(:each) do 
      api = stub("Typhoeus")
      Typhoeus.stub(:get).and_return(api)
    end

    it "should return the available service functions" do 
      VehicleData::Service.get_support_functions
    end    
  end
end