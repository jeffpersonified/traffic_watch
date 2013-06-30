class Message < ActiveRecord::Base
  attr_accessible :campaign_id, :content
  belongs_to :campaign

  # validates_presence_of :campaign_id, :content

  def self.process_sms(params)
    puts "CALL RECEIVED ------> Params: #{params}"

# CALL RECEIVED ------> Params: {"AccountSid"=>"AC681c370b6a0881b2a46c946d3ba38e94", "Body"=>"Heyo!", "ToZip"=>"", "FromState"=>"MI", "ToCity"=>"", "SmsSid"=>"SM085adde77f31110f2ddac56d2c26359d", "ToState"=>"CA", "To"=>"+14155285688", "ToCountry"=>"US", "FromCountry"=>"US", "SmsMessageSid"=>"SM085adde77f31110f2ddac56d2c26359d", "ApiVersion"=>"2010-04-01", "FromCity"=>"GRAND RAPIDS", "SmsStatus"=>"received", "From"=>"+16166482327", "FromZip"=>"49504", "controller"=>"twilio", "action"=>"process_sms"}
    from          = params[:From]
    to            = params[:To]
    content          = params[:Body]
    # date_sent     = params[:From]
    # price          = params[:From]
    # uri          = params[:From]
    city          = params[:FromCity]
    state          = params[:FromState]
    zip          = params[:FromZip]
    Message.create(content: content, city: city, state: state, zip: zip, to: to, from: from)
  end
end
