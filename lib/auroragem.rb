require 'auroragem/auroragem/user'
require 'auroragem/auroragem/projects'
require 'auroragem/auroragem/tenant'
require 'auroragem/auroragem/compute_hmac_signature'
require 'auroragem/auroragem/format_request_string'
require 'auroragem/auroragem/design'
require 'auroragem/auroragem/consumptionpro'
require 'auroragem/auroragem/components'
require 'auroragem/auroragem/hash_helper'
require 'auroragem/auroragem/post_apis'
require 'auroragem/auroragem/apis'

module Auroragem
	class Test

	
		include HashHelper
		include PostApis
		include Components
		include Consumptionpro
		include Projects
		include Design
		include Tenant
	  include User
	  include Apis
		include FormatRequestString
		include ComputeHmacSignature

	    attr_accessor :aurora_api_secret, :aurora_api_keys
		
		def initialize(aurora_api_key, aurora_api_secret)
			@aurora_api_secret = aurora_api_secret
			@aurora_api_key = aurora_api_key
		end

		def self.api_secret
			@aurora_api_secret
		end

		def self.api_key
			@aurora_api_key
		end
	end

end