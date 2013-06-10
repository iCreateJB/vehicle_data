require 'vehicle_data/version'
require 'typhoeus'
require 'cgi'
require 'base64'
require 'openssl'
require 'uri'
require 'json'


module VehicleData
  class Base

    attr_accessor :app_key, :secret, :data, :response, :request, :options

    def initialize(options={})
      @app_key = ENV['app_key']
      @secret  = ENV['secret']
      @data    = { :app => @app_key, :v => 0.2, :t => Time.now.to_i }
    end

    def send_request
      response = Typhoeus.get("#{base_uri}/?#{build_params(@data)}&hash=#{calculate_signature}")
      JSON.parse(response.body)
    end

  private
    def calculate_signature
      signature = Base64.strict_encode64(OpenSSL::HMAC.digest(OpenSSL::Digest::Digest.new('sha256'), @secret, build_params(@data)))
      URI.encode(signature)
    end

    def base_uri
      "http://api.vehicledata.co"
    end

    def build_params(params)
       params.collect { |k,v| "#{k}=#{CGI::escape(v.to_s)}" }.join('&')
    end
  end
end

require 'vehicle_data/makes'
require 'vehicle_data/service'
require 'vehicle_data/vehicles'
require 'vehicle_data/vin'