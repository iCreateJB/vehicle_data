require 'spec_helper'

describe VehicleData::Base do
  let(:options){ 
    {

    }
  }
  subject { VehicleData::Base.new(options) }

  it { should respond_to(:send_request) }

  it { subject.app_key.should_not be_nil }
  it { subject.secret.should_not be_nil }

  it { subject.send(:base_uri).should == "http://api.vehicledata.co" }
  it { subject.send(:build_params, { :app => 'test' }).should == { :app => 'test' }.collect { |k,v| "#{k}=#{CGI::escape(v.to_s)}" }.join('&') }

  context ".data" do 
    it { subject.data.include?(:app).should be_true }
    it { subject.data.include?(:v).should be_true }
    it { subject.data.include?(:t).should be_true }
  end
end