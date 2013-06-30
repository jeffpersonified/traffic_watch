class AddNumberToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :number, :integer
  end
end
