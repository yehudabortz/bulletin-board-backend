class BulletinsController < ApplicationController
    def index 
        bulletins = Bulletin.all
        render json: bulletins  
    end

    def show 
        bulletin = Bulletin.find_by(id: params[:id])
        # render json: bulletin, include: [:boards]
        render json: BulletinSerializer.new(bulletin).to_serialized_json
    end

    def create 
        binding.pry
        bulletin = Bulletin.create(params[:bulletin])
        render json: bulletin
    end
end
