require 'net/https'
require 'uri'
require 'json'
Dir[File.join(__dir__, 'mts', '*.rb')].each { |file| require_relative file }

module Aliyun
	module MTS
		class << self
			Version = "2014-06-18"

			attr_accessor :access_key_id, :access_key_secret, :region, :debug

			def base_url
				"https://mts.#{self.region || 'cn.hangzhou'}.aliyuncs.com"
			end
		end
	end
end
