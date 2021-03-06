require 'auroragem/module/user'
require 'auroragem/module/projects'
require 'auroragem/module/tenant'
require 'auroragem/module/compute_hmac_signature'
require 'auroragem/module/format_request_string'
require 'auroragem/module/design'
require 'auroragem/module/consumptionpro'
require 'auroragem/module/components'
require 'auroragem/module/hash_helper'
require 'auroragem/module/post_apis'
require 'auroragem/module/apis'

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

		def api_secret
			@aurora_api_secret
		end

		def api_key
			@aurora_api_key
		end
	end

end