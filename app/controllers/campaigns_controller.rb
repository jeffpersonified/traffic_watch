class CampaignsController < ApplicationController

  def index
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def new
    @campaign = Campaign.new()
  end

  def create
    @campaign = Campaign.new(params[:campaign])
    @campaign.number = '4155285688'
    if @campaign.save
      flash[:notice] = "Campaign #{@campaign.name} successfully created"
      redirect_to @campaign
    else
      flash[:error] = "There was an error creating a campaign named #{@campaign.name}"
      render 'new'
    end
  end
end
