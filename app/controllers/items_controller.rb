class ItemsController < ApplicationController
  before_action :set_items,only: [:index,:show]
  require 'payjp'
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
    @item = Item.find(params[:id])
  end

  def buy
    @item = Item.find(params[:item_id])
    card = CreditCard.where(user_id: current_user.id).first
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    Payjp::Charge.create(
    amount: @item.price,
    customer: card.customer_id,
    currency: 'jpy'
    )
    @buyer = Item.find(params[:item_id])
    @buyer.update(buyer_id: current_user.id)
    flash[:notice] = '購入しました'
    redirect_to root_path
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
end