module Aliyun
  module MTS
    module Snapshot
      def self.submit(input = {}, config = {}, pipeline_id = "", user_data = "")
        params = { Action: "SubmitSnapshotJob" }
        params[:Input]          = input.to_json
        params[:SnapshotConfig] = config.to_json
        params[:pipeline_id]    = pipeline_id
        params[:user_data]      = user_data

        Util.get_response(params)
      end
    end
  end
end
