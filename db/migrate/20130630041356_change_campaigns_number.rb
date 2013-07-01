class ChangeCampaignsNumber < ActiveRecord::Migration
  def up
    change_column(:campaigns, :number, :string)
  end

  def down
    change_column(:campaigns, :number, :integer)
  end
end
