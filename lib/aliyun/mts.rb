require 'net/https'
require 'uri'
require 'json'
require_relative 'mts/util'
require_relative 'mts/media_info'
require_relative 'mts/snapshot'
require_relative 'mts/transcode'

module Aliyun
  module MTS
    BASE_URL = "https://mts.cn-shanghai.aliyuncs.com"
    class << self
      attr_accessor :access_key_id, :access_key_secret
    end
  end
end
