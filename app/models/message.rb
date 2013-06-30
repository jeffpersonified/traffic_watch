class Message < ActiveRecord::Base
  attr_accessible :campaign_id, :content, :from, :to, :city, :state, :zip, :country,
                  :date_sent, :price, :uri

  belongs_to :campaign
  # validates_presence_of :campaign_id

  def self.process_sms(params)
    puts "CALL RECEIVED @ Params: #{params}"

    from          = params[:From]
    to            = params[:To]
    content       = params[:Body]
    # date_sent     = params[:From]
    # price         = params[:From]
    # uri           = params[:From]
    city          = params[:FromCity]
    state         = params[:FromState]
    zip           = params[:FromZip]
    country       = params[:FromCountry]

    Message.create(city: city, state: state, zip: zip, to: to, from: from, content: content, country: country)
  end
end
