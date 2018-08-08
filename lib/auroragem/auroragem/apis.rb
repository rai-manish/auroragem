
require 'openssl'
require 'base64'
require 'uri'
require 'net/http'
require 'json'


module Apis


    def apis(method, api_path)
      http_verb = "#{method}"
      api_uri ="/v1/#{api_path}"

      timestamp = URI.escape(Time.now.utc.to_s)
      host = "api-sandbox.aurorasolar.com"

      get_post_params = nil
      aurora_api_keys = self.aurora_api_keys
      formated_request_string =self.format_request_string(http_verb, api_uri, aurora_api_keys, timestamp, get_post_params)
      signature =self.compute_hmac_signature(formated_request_string, @aurora_api_secret)
      # Make the actual API request:
      end_point = "https://#{host}#{api_uri}?AuroraKey=#{aurora_api_keys}&Timestamp=#{timestamp}&Signature=#{signature}"
      uri = URI(end_point)
      json_string = Net::HTTP.get(uri) 
      p json_string
    end

end
