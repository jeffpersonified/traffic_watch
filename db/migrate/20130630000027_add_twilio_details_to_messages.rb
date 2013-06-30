class AddTwilioDetailsToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :from, :string
    add_column :messages, :to, :string
    add_column :messages, :body, :string
    add_column :messages, :date_sent, :string
    add_column :messages, :price, :string
    add_column :messages, :uri, :string
    add_column :messages, :city, :string
    add_column :messages, :state, :string
    add_column :messages, :zip, :string
    add_column :messages, :country, :string
  end
end
