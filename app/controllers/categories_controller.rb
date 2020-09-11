class CategoriesController < ApplicationController

  def index
    @parents = Category.where(ancestry: nil)
    @items = Item.all
    @categories = Product.includes(:images).order("created_at DESC")
  end
end