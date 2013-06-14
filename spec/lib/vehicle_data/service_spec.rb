require 'spec_helper'

describe VehicleData::Service do 
  subject{ VehicleData::Service }

  it { subject.should respond_to(:get_support_functions) } 
end