class Message < ActiveRecord::Base
  attr_accessible :campaign_id, :content, :from, :to, :city, :state, :zip, :country,
                  :date_sent, :price, :uri

  belongs_to :campaign
  # validates_presence_of :campaign_id

  def self.process_sms(params)
    puts "CALL RECEIVED WITH PARAMS: #{params}"

    receiver = sanitize_number(params[:To])
    # campaign = Campaign.find_by_number(receiver)

    to            = params[:To]
    from          = params[:From]
    content       = params[:Body]
    # date_sent     = params[:From]
    # price         = params[:From]
    # uri           = params[:From]
    city          = params[:FromCity]
    state         = params[:FromState]
    zip           = params[:FromZip]
    country       = params[:FromCountry]

    # Message.create(campaign_id: campaign.id, city: city, state: state, zip: zip, to: to, from: from, content: content, country: country)
    Message.create(city: city, state: state, zip: zip, to: to, from: from, content: content, country: country)
  end

  def sanitize_number(phone)
    number = phone.gsub('+','')
  end
end
