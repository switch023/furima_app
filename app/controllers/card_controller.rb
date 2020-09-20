class CardController < ApplicationController
  require "payjp"

  def index
    @card = CreditCard.where(user_id: current_user.id).first
    redirect_to action: "show" if @card.exists?
  end

  def pay
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    if params['payjpToken'].blank?
      redirect_to action: "new", alert: "クレジットカードを登録できませんでした"
    else
      customer = Payjp::Customer.create(
      email: current_user.email, 
      card: params['payjpToken'],
      metadata: {user_id: current_user.id}
      )
      @card = CreditCard.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to action: "show"
      else
        redirect_to action: "pay"
      end
    end
  end

  def show
    card = CreditCard.where(user_id: current_user.id).first
    if card.blank?
      redirect_to action: "new"
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @initial_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def destroy
    card = CreditCard.where(user_id: current_user.id).first
    if card.blank?
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.delete
      card.delete
    end
      redirect_to action: "new"
  end
end
