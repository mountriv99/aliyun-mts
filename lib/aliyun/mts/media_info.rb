module Aliyun
  module MTS
    module MediaInfo
      def self.submit(input = {}, pipeline_id = "", user_data = "")
        params = { Action: "SubmitMediaInfoJob" }
        params[:Input]       = input.to_json
        params[:pipeline_id] = pipeline_id
        params[:user_data]   = user_data

        Util.get_response(params)
      end
    end
  end
end
