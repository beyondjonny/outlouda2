require 'aws-sdk-polly'
client = Aws::Polly::Client.new(region: 'us-west-2')
client.synthesize_speech(output_format: 'mp3', text: 'hello world', voice_id: 'Joanna')
