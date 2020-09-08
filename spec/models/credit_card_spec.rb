require 'rails_helper'

describe CreditCard do
  describe '#create'do

    it "カード番号がない場合" do
      card = FactoryBot.build(:credit_card, : nil)
      card.valid?
      expect(card.errors[:pay_number]).to include("can`t be blank")
    end
  end
end