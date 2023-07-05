class EffectorsController < ApplicationController
    before_action :authenticate_user!
    def index
         @effectors = Effector.all
    end
    def new
        @effector = Effector.new
    end

    def show
        @effector = Effector.find(params[:id])
    end


    def create
        effector = Effector.new(effector_params)    

        effector.user_id = current_user.id

        if effector.save
            redirect_to :action => "index"
          else
            redirect_to :action => "new"
        end
    end


private

    def effector_params
        params.require(:effector).permit(:title, :image, :introduction, :video, :released_year, :user_id, :url)
    end
end