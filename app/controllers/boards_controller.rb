class BoardsController < ApplicationController

  def index
    authenticate_user!
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.create!(board_params)
    redirect_to user_boards_path(current_user)
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    @user = current_user
    @board.update(board_params)
    redirect_to user_board_path(@user, @board)
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to user_boards_path
  end

private
  def board_params
    params.require(:board).permit(:title)
  end

end
