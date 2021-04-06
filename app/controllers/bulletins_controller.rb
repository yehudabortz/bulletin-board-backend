class BulletinsController < ApplicationController
    def index 
        bulletins = Bulletin.all.sort_by(&:name)
        render json: bulletins  
    end

    def show 
        bulletin = Bulletin.find_by(id: params[:id])
        render json: BulletinSerializer.new(bulletin).to_serialized_json
    end

    def create 
        bulletin = Bulletin.create(bulletin_params)
        render json: bulletin
    end
    
    def destroy 
        bulletin = Bulletin.find_by(id: params[:id])
        bulletin.destroy
        render json: bulletin
    end

    private

    def bulletin_params
        params.require(:bulletin).permit(:name)
    end

end