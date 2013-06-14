require 'spec_helper'

describe VehicleData::Makes do 
  subject{ VehicleData::Makes }

  it { subject.should respond_to(:get_all) }
  it { subject.should respond_to(:get_info) }
end