require 'rails_helper'
describe SendInformation do
  describe '#create' do
    it "send_first_nameがない場合は登録できないこと" do
      
      send_information = build(:send_information,send_first_name:nil)
      send_information.valid?
      expect(send_information.errors[:send_first_name]).to include("can't be blank")
    end
    it "send_family_nameがない場合は登録できないこと" do
      send_information = build(:send_information,send_family_name:nil)
      send_information.valid?
      expect(send_information.errors[:send_family_name]).to include("can't be blank")
    end
    it "send_first_name_kanaがない場合は登録できないこと" do
      send_information = build(:send_information,send_first_name_kana:nil)
      send_information.valid?
      expect(send_information.errors[:send_first_name_kana]).to include("can't be blank")
    end
    it "send_family_name_kanaがない場合は登録できないこと" do
      send_information = build(:send_information,send_family_name_kana:nil)
      send_information.valid?
      expect(send_information.errors[:send_family_name_kana]).to include("can't be blank")
    end
    it "post_codeがない場合は登録できないこと" do
      send_information = build(:send_information,post_code:nil)
      send_information.valid?
      expect(send_information.errors[:post_code]).to include("can't be blank")
    end
    it "prefectureがない場合は登録できないこと" do
      send_information = build(:send_information,prefecture:nil)
      send_information.valid?
      expect(send_information.errors[:prefecture]).to include("can't be blank")
    end
    it "cityがない場合は登録できないこと" do
      send_information = build(:send_information,city:nil)
      send_information.valid?
      expect(send_information.errors[:city]).to include("can't be blank")
    end
    it "addressがない場合は登録できないこと" do
      send_information = build(:send_information,address:nil)
      send_information.valid?
      expect(send_information.errors[:address]).to include("can't be blank")
    end
    it "phone_numberがない場合は登録できないこと" do
      send_information = build(:send_information,phone_number:nil)
      send_information.valid?
      expect(send_information.errors[:phone_number]).to include("can't be blank")
    end
    it "user_idがない場合は登録できないこと" do
      send_information = build(:send_information,user_id:nil)
      send_information.valid?
      expect(send_information.errors[:user_id]).to include("can't be blank")
    end
    it " 重複したphone_numberが存在する場合は登録できないこと " do
      send_information = create(:send_information)
      another_send_information = build(:send_information, phone_number: send_information.phone_number)
      another_send_information.valid?
      expect(another_send_information.errors[:phone_number]).to include("has already been taken")
    end
    it "send_first_name、send_family_name、send_first_name_kana、send_family_name_kana、post_code、prefecture、city、address、phone_number、user_idが存在すれば登録できること" do
      send_information = build(:send_information)
      expect(send_information).to be_valid
    end
  end
end