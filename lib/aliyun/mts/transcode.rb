module Aliyun
	module MTS
		module Transcode

			class << self

				# https://help.aliyun.com/document_detail/29226.html
				# params: {
				#   :Input => {"Bucket":"example-bucket", "Location":"oss-cn-hangzhou", "Object":"example.flv"},
				#   :OuputBucket => "example-output-bucket",
				#   :OutputLocation => "oss-cn-hangzhou", # optional, defaults to "oss-cn-hangzhou"
				#   :Outputs => [{ # https://help.aliyun.com/document_detail/29253.html?#h2-url-2
				#      "OutputObject":"example-output.flv",
				#      "TemplateId":"S00000000-000010", # https://help.aliyun.com/document_detail/29256.html
				#      "WaterMarks":[{"InputFile":{"Bucket":"example-bucket","Location":"oss-cn-hangzhou","Object":"example-logo.png"},"WaterMarkTemplateId":"88c6ca184c0e47098a5b665e2a126797"}],
				#      "UserData":"testid-001"
				#   }],
				#   :PipelineId => "example-pipeline-id"
				# }
				def submit_jobs(params)
					params = params.merge({:Action => "SubmitJobs"})
					params[:Input] = params[:Input].to_json
					params[:Outputs] = params[:Outputs].to_json

					Util.get_response(params)
				end

				def cancel_job
					# TODO
				end

				def query_job_list
					# TODO
				end

				def list_job
					# TODO
				end

			end

		end
	end
end
