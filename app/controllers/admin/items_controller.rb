class Admin::ItemsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @items = Item.all.page(params[:page]).per(10)
  end

  def new
    @item_genres = ItemGenre.all
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_item_path(@item), notice: "You have created item successfully."
    else
      @item_genres = ItemGenre.all
      render 'new'
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item_genres = ItemGenre.all
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to admin_item_path(@item), notice: "You have update item successfully."
    else
      render "edit"
    end
  end

  private

  def item_params
    params.require(:item).permit(:item_image, :item_name, :item_detail, :price, :item_genre_id, :status)
  end

end
