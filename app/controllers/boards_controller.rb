class BoardsController < ApplicationController
    def index 
        boards = Board.all
        render json: boards
    end

    def create 
        board = Board.create(board_params)
        render json: board
    end

    def show
        board = Board.find_by(id: params[:id])
        render json: board
    end
    
    def destroy 
        board = Board.find_by(id: params[:id])
        board.destroy
        render json: board
    end

    def update
        board = Board.find_by(id: params[:id])
        board.update(board_params)
        render json: board
    end

    private

    def board_params
        params.require(:board).permit(:name, :bulletin_id)
    end
end
