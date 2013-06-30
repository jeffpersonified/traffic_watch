class Message < ActiveRecord::Base
  attr_accessible :campaign_id, :content
  belongs_to :campaign

  # validates_presence_of :campaign_id, :content

  def self.process_sms(params)
    puts "CALL RECEIVED ------> Params: #{params}"
    # from          = params[:From]
    # to            = params[:To]
    # body          = params[:From]
    # date_sent     = params[:From]
    # price          = params[:From]
    # uri          = params[:From]
    # city          = params[:From]
    # state          = params[:From]
    # zip          = params[:From]
    content          = params[:body]


    # t.string   "from"
    # t.string   "to"
    # t.string   "body"
    # t.string   "date_sent"
    # t.string   "price"
    # t.string   "uri"
    # t.string   "city"
    # t.string   "state"
    # t.string   "zip"
    # t.string   "country"
    # @state = params[:FromState]
    Message.create(content: content)
  end
end
