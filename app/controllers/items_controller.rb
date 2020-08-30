class ItemsController < ApplicationController
  before_action :set_items,only: [:index,:show]
  def index
    if user_signed_in?
      @user =User.find(current_user.id)
    end
  end

  def new
    @parents = Category.where(ancestry: nil)
    @item = Item.new
    @item.item_images.new
  end

  def create
    @item = Item.new(item_params)
    @parents = Category.where(ancestry: nil)
    if @item.save!
      flash[:success] = "ユーザを登録しました"
      redirect_to root_path
    else
      flash[:danger] = "ユーザの登録に失敗しました"
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  private
  def item_params
    params.require(:item).permit( :name, :introduction, :price, :brand_id, :category_id,
                                  :item_condition_id, :postage_payer_id, :prefecture_code_id,
                                  :preparation_day_id, :postage_type_id, :buyer_id, item_images_attributes: [:url]).merge(seller_id: current_user.id)
    end

  def set_items
    @items = Item.all
  end
end
