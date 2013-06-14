require 'spec_helper' 

describe VehicleData::Vehicles do 
  subject{ VehicleData::Vehicles }

  it { subject.should respond_to(:get_makes) }
  it { subject.should respond_to(:get_models) }
  it { subject.should respond_to(:get_trims) }
  it { subject.should respond_to(:get_style_trims) }
  it { subject.should respond_to(:get_transmissions) }
end