class ItemsController < ApplicationController
  before_action :set_items,only: [:index,:show]

  before_action :set_item,only: [:show, :edit, :update]

  def index
  end

  def new
    @parents = Category.where(ancestry: nil)
    @item = Item.new
    @item.item_images.new
  end

  def create
    @item = Item.new(item_params)
    @parents = Category.where(ancestry: nil)
    if @item.save
      redirect_to root_path
    else
      @item.item_images.new
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to root_path
    else
      # redirect_to edit_item_path
      render :edit
    end
  end

  private
  def item_params
    params.require(:item).permit( :name, :introduction, :price, :brand, :category_id,
                                  :item_condition_id, :postage_payer_id, :prefecture_code_id,
                                  :preparation_day_id, :postage_type_id, :buyer_id, item_images_attributes: [:url, :_destroy, :id]).merge(seller_id: current_user.id)
    end

  def set_items
    @items = Item.all
  end
  def set_item
    @item = Item.find(params[:id])
  end
end