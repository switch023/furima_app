class ItemsController < ApplicationController
  def index
    # @item = Item.all
  end

  def new
    # @item = Item.new
  end

  def create
    # Item.crerate(item_params)
  end

  private
  def item_params
    params.require(:item).parmit(:name, :introduction, :price, :brand_id, :category_id, :item_condition_id,
                                  :postage_payer_id, :prefecture_code, :prepation_day_id, :postage_type_id)
  end
end
