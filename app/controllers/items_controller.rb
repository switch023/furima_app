class ItemsController < ApplicationController
  before_action :set_items,only: [:index,:show]
  def index
  end

  def new
  end

  def create
  end

  def show
    @item = Item.find(params[:id])
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end

  def set_items
    @items = Item.all
  end

end
