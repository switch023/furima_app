require 'rails_helper'

describe Item do
  describe '#create' do
    it "item_imageが無い場合は登録できないこと" do
      item = build(:item)
      item.valid?
      expect(item.errors[:item_images]).to include("can't be blank")
    end

    it "nameが無い場合は登録できないこと" do
      item = build(:item, name: nil)
      item.valid?
      expect(item.errors[:name]).to include("can't be blank")
    end

    it "nameが40文字を超える場合は登録できないこと" do
      item = build(:item, name: "a" * 41)
      item.valid?
      expect(item.errors[:name]).to include("is too long (maximum is 40 characters)")
    end

    it "introductionが無い場合は登録できないこと" do
      item = build(:item, introduction: nil)
      item.valid?
      expect(item.errors[:introduction]).to include("can't be blank")
    end

    it "introductionが40文字を超える場合は登録できないこと" do
      item = build(:item, introduction: "a" * 1001)
      item.valid?
      expect(item.errors[:introduction]).to include("is too long (maximum is 1000 characters)")
    end

    it "category_idが無い場合は登録できないこと" do
      item = build(:item, category_id: nil)
      item.valid?
      expect(item.errors[:category_id]).to include("can't be blank")
    end

    it "item_condition_idが無い場合は登録できないこと" do
      item = build(:item, item_condition_id: nil)
      item.valid?
      expect(item.errors[:item_condition_id]).to include("can't be blank")
    end

    it "postage_payer_idが無い場合は登録できないこと" do
      item = build(:item, postage_payer_id: nil)
      item.valid?
      expect(item.errors[:postage_payer_id]).to include("can't be blank")
    end

    it "prefecture_code_idが無い場合は登録できないこと" do
      item = build(:item, prefecture_code_id: nil)
      item.valid?
      expect(item.errors[:prefecture_code_id]).to include("can't be blank")
    end

    it "preparation_day_idが無い場合は登録できないこと" do
      item = build(:item, preparation_day_id: nil)
      item.valid?
      expect(item.errors[:preparation_day_id]).to include("can't be blank")
    end

    it "postage_type_idが無い場合は登録できないこと" do
      item = build(:item, postage_type_id: nil)
      item.valid?
      expect(item.errors[:postage_type_id]).to include("can't be blank")
    end

    it "priceが無い場合は登録できないこと" do
      item = build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("can't be blank")
    end
    it "priceが300円未満の場合は登録できないこと" do
      item = build(:item, price: 299)
      item.valid?
      expect(item.errors[:price]).to include("must be greater than or equal to 300")
    end

    it "priceが9,999,999円を超える場合は登録できないこと" do
      item = build(:item, price: 10000000)
      item.valid?
      expect(item.errors[:price]).to include("must be less than or equal to 9999999")
    end

    it "seller_idが無い場合は登録できないこと" do
      item = build(:item, seller_id: nil)
      item.valid?
      expect(item.errors[:seller_id]).to include("can't be blank")
    end

    it "全てを満たせば登録できること" do
      item_image = build(:item_image)
      item = build(:item, item_images:[item_image])
      expect(item).to be_valid
    end
  end
end