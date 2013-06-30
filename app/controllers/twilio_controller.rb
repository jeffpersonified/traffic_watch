class TwilioController < ApplicationController
  def process_sms
    @message = Message.process_sms(params)
    render 'process_sms.xml.erb', :content_type => 'text/xml'
  end
end
