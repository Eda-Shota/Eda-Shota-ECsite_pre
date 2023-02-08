class Admin::GenresController < ApplicationController
  def index
    @item_genres = ItemGenre.all
    @item_genre = ItemGenre.new
  end

  def create
    @item_genre = ItemGenre.new(genre_params)
    if @item_genre.save
      redirect_to admin_genres_path, notice: "You have created genre successfully."
    else
      @item_genres = ItemGenre.all
      render 'index'
    end
  end
  
  def edit
    @item_genre = ItemGenre.find(params[:id])
  end
  
  def update
    @item_genre = ItemGenre.find(params[:id])
    if @item_genre.update(genre_params)
      redirect_to admin_genres_path, notice: "You have updated genre successfully."
    else
      render "edit"
    end
  end
  
  private

  def genre_params
    params.require(:item_genre).permit(:genre_name)
  end
  
end
