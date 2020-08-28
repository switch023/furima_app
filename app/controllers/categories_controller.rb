class CategoriesController < ApplicationController

  def index
    if user_signed_in?
      @user =User.find(current_user.id)
    end
  end

  def new
    @item = Item.new
    @item = item_images.new
  end

  def create
    @item = Item.new(item_params)

  end
  private
  def item_params
    params.resqire(:item).permit( :name, :introduction, :price, :brand_id, :category_id,
                                  :item_condition_id, :postage_payer_id, :prefecture_code_id,
                                  :preparation_day_id, :buyer_id, item_images_attributes: [:url]).marge(seller_id: current_user.id)
    end
end