module Aliyun
	module MTS
		module MediaInfo

			class << self

				# https://help.aliyun.com/document_detail/29220.html
				# params: {
				#   :Input => {"Bucket":"example-bucket", "Location":"oss-cn-hangzhou", "Object":"example.flv"},
				#   :UserData => "user data string"
				# }
				# returns: {
				# 	"RequestId": "25818875-5F78-4A13-BEF6-D7393642CA58",
				# 	"MediaInfoJob": [{
				# 		"JobId": "88c6ca184c0e47098a5b665e2a126797",
				# 		"Input": {
				# 			"Bucket": "example-bucket",
				# 			"Location": "oss-cn-hangzhou",
				# 			"Object": "example.flv"
				# 		},
				# 		"Properties":{
				# 			"Streams":{
				# 				"VideoStreamList":{
				# 					"VideoStream":[{
				# 						"Index":"1",
				# 						"CodecName":"h264",
				# 						"CodecLongName":"H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10",
				# 						"Profile":"High",
				# 						"CodecTimeBase":"1001/48000",
				# 						"CodecTagString":"[0][0][0][0]",
				# 						"CodecTag":"0x0000",
				# 						"Width":"1920",
				# 						"Height":"1080",
				# 						"HasBFrames":"1",
				# 						"Sar":"1:1",
				# 						"Dar":"16:9",
				# 						"PixFmt":"yuv420p",
				# 						"Level":"41",
				# 						"Fps":"25",
				# 						"AvgFPS":"24000/1001",
				# 						"Timebase":"1/1000",
				# 						"StartTime":"0.042000",
				# 						"Duration":"100",
				# 						"Bitrate":"30541090",
				# 						"NumFrames":"100",
				# 						"Lang":"eng",
				# 						"NetworkCost":{
				# 							"PreloadTime":"8",
				# 							"CostBandwidth":"10",
				# 							"AvgBitrate":"300.34"
				# 						}
				# 					}]
				# 				},
				# 				"AudioStreamList":{
				# 					"AudioStream":[{
				# 						"Index":"1",
				# 						"CodecName":"dca",
				# 						"CodecTimeBase":"1/48000",
				# 						"CodecLongName":"DCA (DTS Coherent Acoustics)",
				# 						"CodecTagString":"[0][0][0][0]",
				# 						"CodecTag":"0x0000",
				# 						"SampleFmt":"fltp",
				# 						"Samplerate":"48000",
				# 						"Channels":"2",
				# 						"ChannelLayout":"5.1(side)",
				# 						"Timebase":"1/1000",
				# 						"StartTime":"0.042000",
				# 						"Duration":"123",
				# 						"Bitrate":"1536000",
				# 						"NumFrames":"123",
				# 						"Lang":"eng"
				# 					}]
				# 				},
				# 				"SubtitleStreamList":{
				# 					"SubtitleStream":[{
				# 						"Index":"3",
				# 						"Lang":"eng"
				# 					}]
				# 				},
				# 				"Format":{
				# 					"NumStreams":"1",
				# 					"NumPrograms":"2",
				# 					"FormatName":"matroska,webm",
				# 					"FormatLongName":"Matroska / WebM",
				# 					"StartTime":"0.042000",
				# 					"Duration":"17.600000",
				# 					"Size":"70569598",
				# 					"Bitrate":"32077090"
				# 				},
				# 				"UserData":"testid-001",
				# 				"State": "Analyzing",
				# 				"Code": "",
				# 				"Message": "",
				# 				"PipelineId": "88c6ca184c0e47098a5b665e2a126797",
				# 				"CreationTime":"2014-01-10T12:00:00Z"
				# 			}
				# 		}
				# 	}]
				# }
				def submit_job(params)
					params = params.merge({:Action => "SubmitMediaInfoJob"})
					params[:Input] = params[:Input].to_json

					Util.get_response(params)
				end

				def query_media_info_job_list
					# TODO
				end

			end

		end
	end
end
