require 'spec_helper'

describe VehicleData::Vin do 
  subject{ VehicleData::Vin }

  it { subject.should respond_to(:decode) }
end