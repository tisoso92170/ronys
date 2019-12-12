class TiersController < ApplicationController

  def index
  @tier = Tier.all
  end

  def new
    @tier = Tier.new
    respond_to do |format|
      format.html # new.html.erb
      format.js
      format.json { render :json => @tier }
    end
  end

  def create
    @tier = Tier.new(tier_params)
    
    @tier.save
    redirect_to tiers_path
  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end

  private
  def tier_params
    params.require(:tier).permit!
  end

end
