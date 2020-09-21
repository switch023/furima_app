require 'rails_helper'

describe Item do
  describe '#create' do
    it "item_imageが無い場合は登録できないこと" do
      item = build(:item)
      item.valid?
      expect(item.errors[:item_images]).to include("を入力してください")
    end

    it "nameが無い場合は登録できないこと" do
      item = build(:item, name: nil)
      item.valid?
      expect(item.errors[:name]).to include("を入力してください")
    end

    it "nameが40文字を超える場合は登録できないこと" do
      item = build(:item, name: "a" * 41)
      item.valid?
      expect(item.errors[:name]).to include("は40文字以内で入力してください")
    end

    it "introductionが無い場合は登録できないこと" do
      item = build(:item, introduction: nil)
      item.valid?
      expect(item.errors[:introduction]).to include("を入力してください")
    end

    it "introductionが40文字を超える場合は登録できないこと" do
      item = build(:item, introduction: "a" * 1001)
      item.valid?
      expect(item.errors[:introduction]).to include("は1000文字以内で入力してください")
    end

    it "category_idが無い場合は登録できないこと" do
      item = build(:item, category_id: nil)
      item.valid?
      expect(item.errors[:category_id]).to include("を入力してください")
    end

    it "item_condition_idが無い場合は登録できないこと" do
      item = build(:item, item_condition_id: nil)
      item.valid?
      expect(item.errors[:item_condition_id]).to include("を入力してください")
    end

    it "postage_payer_idが無い場合は登録できないこと" do
      item = build(:item, postage_payer_id: nil)
      item.valid?
      expect(item.errors[:postage_payer_id]).to include("を入力してください")
    end

    it "prefecture_code_idが無い場合は登録できないこと" do
      item = build(:item, prefecture_code_id: nil)
      item.valid?
      expect(item.errors[:prefecture_code_id]).to include("を入力してください")
    end

    it "preparation_day_idが無い場合は登録できないこと" do
      item = build(:item, preparation_day_id: nil)
      item.valid?
      expect(item.errors[:preparation_day_id]).to include("を入力してください")
    end

    it "postage_type_idが無い場合は登録できないこと" do
      item = build(:item, postage_type_id: nil)
      item.valid?
      expect(item.errors[:postage_type_id]).to include("を入力してください")
    end

    it "priceが無い場合は登録できないこと" do
      item = build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("を入力してください")
    end
    it "priceが300円未満の場合は登録できないこと" do
      item = build(:item, price: 299)
      item.valid?
      expect(item.errors[:price]).to include("は￥300以上の価格にしてください")
    end

    it "priceが9,999,999円を超える場合は登録できないこと" do
      item = build(:item, price: 10000000)
      item.valid?
      expect(item.errors[:price]).to include("は￥9999999以下の価格にしてください")
    end

    it "seller_idが無い場合は登録できないこと" do
      item = build(:item, seller_id: nil)
      item.valid?
      expect(item.errors[:seller_id]).to include("を入力してください")
    end

    it "全てを満たせば登録できること" do
      item_image = build(:item_image)
      item = build(:item, item_images:[item_image])
      expect(item).to be_valid
    end
  end
end