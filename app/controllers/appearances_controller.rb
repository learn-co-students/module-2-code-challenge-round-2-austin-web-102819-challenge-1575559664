class AppearancesController < ApplicationController

    def index
      @appearances = Appearance.all
    end

    def new
      @appearance = Appearance.new
    end

    def create 
        @appearance = Appearance.new(allowed_params)
        if @appearance.save
            redirect_to @appearance.episode
        else
            render :new
        end
    end

    private 

    def allowed_params
        params.require(:appearance).permit!
    end
end
  