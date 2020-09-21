require 'rails_helper'

describe CreditCard do
  describe '#create'do
    context 'クレジットカードで購入がうまくいかない場合'do
      it "カード番号がない場合" do
        card = FactoryBot.build(:credit_card, card_id: nil)
        card.valid?
        expect(card.errors[:card_id]).to include("を入力してください")
      end
      it "顧客のidがない場合" do
        card = FactoryBot.build(:credit_card, customer_id: nil)
        card.valid?
        expect(card.errors[:customer_id]).to include("を入力してください")
      end
    end
  end
end