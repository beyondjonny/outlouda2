# require "google/cloud/text_to_speech"

# client = Google::Cloud::TextToSpeech.text_to_speech

# input_text = { text: text }

# # Note: the voice can also be specified by name.
# # Names of voices can be retrieved with client.list_voices
# voice = {
#   language_code: "en-US",
#   ssml_gender:   "FEMALE"
# }

# audio_config = { audio_encoding: "MP3" }

# response = client.synthesize_speech(
#   input:        input_text,
#   voice:        voice,
#   audio_config: audio_config
# )

# # The response's audio_content is binary.
# File.open output_file, "wb" do |file|
#   # Write the response to the output file.
#   file.write response.audio_content
# end
