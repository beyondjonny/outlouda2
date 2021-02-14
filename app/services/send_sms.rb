# require 'twilio-ruby'
# class SendSms

# def initialize(number, link, company, deadline)
#     @number = number
#     @link = link
#     @company = company
#     @deadline = deadline
#   end
#   def send_message
#     account_sid = ENV["TWILIO_ACCOUNT_SID"]
#     account_token = ENV["TWILIO_AUTH_TOKEN"]
#     body = "Congratulations, you recently applied for a role at #{@company} and have been selected to complete an initial screening interview using Screen App. Please follow the link below to record yourself answering some initial questions before #{@deadline}-#{@link}"
#         @client = Twilio::REST::Client.new(account_sid, account_token)
#         @client.messages.create(
#         body: body,
#         from: '+447481340680',
#         to: @number
#       )
#   end
# end
