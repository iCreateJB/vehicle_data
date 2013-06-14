require 'spec_helper' 

describe VehicleData::Vehicles do 
  let(:options){
    {
      :year  => '',
      :make  => '',
      :model => ''
    }
  }
  subject{ VehicleData::Vehicles }

  it { subject.should respond_to(:get_makes) }
  it { subject.should respond_to(:get_models) }
  it { subject.should respond_to(:get_trims) }
  it { subject.should respond_to(:get_style_trims) }
  it { subject.should respond_to(:get_transmissions) }

  before(:each) do 
    api = stub("Typhoeus")
    Typhoeus.stub(:get).and_return(api)
  end

  context ".get_makes" do 
    it "return all makes for a year" do 
      expect{ VehicleData::Vehicles.get_makes(options[:year]) }.to_not raise_error
    end
  end

  context ".get_models" do 
    it "should return all models for a vehicle" do 
      expect{ VehicleData::Vehicles.get_models(options[:year], options[:model]) }.to_not raise_error
    end
  end

  context ".get_trims" do 
    it "should return all trims for a vehicle" do 
      expect{ VehicleData::Vehicles.get_trims(options[:year], options[:make], options[:model]) }.to_not raise_error
    end
  end

  context ".get_style_trims" do 
    it "should return all styles for a vehicle" do 
      expect{ VehicleData::Vehicles.get_style_trims(options) }.to_not raise_error
    end
  end

  context ".get_transmissions" do 
    it "should return all transmissions for a vehicle" do 
      expect{ VehicleData::Vehicles.get_transmissions(options) }.to_not raise_error
    end
  end
end