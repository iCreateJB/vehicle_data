require 'spec_helper'

describe VehicleData::Makes do 
  let(:make){ "Mazda" }
  subject{ VehicleData::Makes }

  it { subject.should respond_to(:get_all) }
  it { subject.should respond_to(:get_info) }

  before(:each) do 
    api = stub("Typhoeus")
    Typhoeus.stub(:get).and_return(api)
  end

  context ".get_all" do 
    it "should send a request to get all available makes" do 
      VehicleData::Makes.get_all
    end
  end

  context ".get_info" do 
    it "should send a request to get a specific make info" do 
      VehicleData::Makes.get_info(make)
    end
  end
end