class BulletinsController < ApplicationController
    def index 
        bulletins = Bulletin.all
        render json: bulletins  
    end

    def show 
        bulletin = Bulletin.find_by(id: params[:id])
        render json: bulletin, include: [:boards]
    end
end
