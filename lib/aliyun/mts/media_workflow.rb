module Aliyun
	module MTS
		module MediaWorkflow

			class << self

				# https://help.aliyun.com/document_detail/44437.html
				# https://help.aliyun.com/document_detail/68617.html
				# params: {
				#   "Topology": {
				#     "Activities": {
				#       "Act-Transcode-M3U8": {
				#         "Parameters": {
				#           "Outputs": [{
				#             "OutputObject": "transcode%2F%7BObjectPrefix%7D%7BFileName%7D",
				#             "TemplateId": "957d1719ee85ed6527b90cf62726cbef"
				#           }],
				#           "OutputBucket": "panda-vod-hls",
				#           "OutputLocation": "oss-cn-hangzhou"
				#         },
				#         "Type": "Transcode"
				#       },
				#       "Act-Start": {
				#         "Name": "Act-Start",
				#         "Parameters": {
				#           "PipelineId": "130266f58161436a80bf07cb12c8009a",
				#           "InputFile": {
				#             "Bucket": "panda-vod",
				#             "Location": "oss-cn-hangzhou"
				#           }
				#         },
				#         "Type": "Start"
				#       },
				#       "Act-Report": {
				#         "Name": "Act-Report",
				#         "Parameters": {},
				#         "Type": "Report"
				#       }
				#     },
				#     "Dependencies": {
				#       "Act-Transcode-M3U8": ["Act-Report"],
				#       "Act-Start": ["Act-Transcode-M3U8"],
				#       "Act-Report": []
				#     }
				#   },
				#   "TriggerMode": "" # optional: "OssAutoTrigger" or "NotInAuto"
				# }
				def add_media_workflow(params)
					params = params.merge({:Action => "AddMediaWorkflow"})
					params[:Name] ||= "mediaworkflow-#{Time.now.to_f}-#{SecureRandom.hex(10)}"
					params[:Topology] = params[:Topology].to_json

					Util.get_response(params)
				end

				def activate_media_workflow
					# TODO
				end

				def deactivate_media_workflow
					# TODO
				end

				def delete_media_workflow
					# TODO
				end

				def update_media_workflow
					# TODO
				end

				def query_media_workflow_list
					# TODO
				end

				def search_media_workflow
					# TODO
				end

				def update_media_workflow_trigger_mode
					# TODO
				end

			end

		end
	end
end
