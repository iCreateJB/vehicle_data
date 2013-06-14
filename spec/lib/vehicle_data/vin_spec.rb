require 'spec_helper'

describe VehicleData::Vin do 
  let(:vin){ SecureRandom.hex(10) }
  subject{ VehicleData::Vin }

  it { subject.should respond_to(:decode) }

  context ".decode" do 
    before(:each) do 
      api = stub("Typhoeus")
      Typhoeus.stub(:get).and_return(api)
    end

    it "should send a request to decode the vin" do 
      VehicleData::Vin.decode(vin)
    end
  end
end