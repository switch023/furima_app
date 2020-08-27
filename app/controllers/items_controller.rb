class ItemsController < ApplicationController
  before_action :set_item,only: [:index,:show]
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

  def set_item
    @items = Item.all
  end

end
