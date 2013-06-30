class Campaign < ActiveRecord::Base
  attr_accessible :country, :name, :number
  has_many :messages

  validates_presence_of :name
end
