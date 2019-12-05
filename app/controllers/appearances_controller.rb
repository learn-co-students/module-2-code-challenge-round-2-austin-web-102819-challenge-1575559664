class AppearancesController < ApplicationController
    
  def new
    @appearance = Appearance.new
  end
  
  def create
    @appearance = Appearance.new(guest_params)
    @episode = Episode.find(params[:appearance][:episode_id])
      if @appearance.valid?
        @appearance.save
        redirect_to @episode
      else
        render :new
      end
    end
    
  private
    
  def guest_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end