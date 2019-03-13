module Aliyun
	module MTS
		module Transcoding

			class << self

				# https://help.aliyun.com/document_detail/29226.html
				# params: {
				#	 :Input => {"Bucket":"example-bucket", "Location":"oss-cn-hangzhou", "Object":"example.flv"},
				#	 :OuputBucket => "example-output-bucket",
				#	 :OutputLocation => "oss-cn-hangzhou", # optional, defaults to "oss-cn-hangzhou"
				#	 :Outputs => [{
				#      "OutputObject":"example-output.flv",
				#      "TemplateId":"S00000000-000010", # https://help.aliyun.com/document_detail/29256.html
				#      "WaterMarks":[{"InputFile":{"Bucket":"example-bucket","Location":"oss-cn-hangzhou","Object":"example-logo.png"},"WaterMarkTemplateId":"88c6ca184c0e47098a5b665e2a126797"}],
				#      "UserData":"testid-001"
				#    }],
				#	 :PipelineId => "example-pipeline-id"
				# }
				def submit(params)
					params = params.merge({:Action => "SubmitJobs"})
					params[:Input] = params[:Input].to_json
					params[:Outputs] = params[:Outputs].to_json

					uri = URI(BASE_URL)
					uri.query = URI.encode_www_form(Util.signature_params(params))
					res = Net::HTTP.get_response(uri)
					JSON.parse res.body
				end

				def cancel
					# TODO
				end

				def query
					# TODO
				end

				def list
					# TODO
				end

			end

		end
	end
end
