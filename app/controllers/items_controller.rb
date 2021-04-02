class ItemsController < ApplicationController

    def create
        item = Item.create(item_params)
        render json: item
    end

    private

    def item_params
        params.require(:item).permit(:title, :body, :board_id)
    end
end
