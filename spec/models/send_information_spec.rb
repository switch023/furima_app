require 'rails_helper'
describe SendInformation do
  describe '#create' do
    context '新規登録がうまくいかない時'do
      it "send_first_nameがないと登録できない" do
      end
      it "send_family_nameがない場合は登録できない" do
      end
      it "send_first_name_kanaがない場合は登録できない" do
      end
      it "send_family_name_kanaがない場合は登録できない" do
      end
      it "post_codeがない場合は登録できない" do
      end
      it "prefectureがない場合は登録できない" do
      end
      it "cityがない場合は登録できない" do
      end
      it "addressがない場合は登録できない" do
      end
      it "user_idがない場合は登録できない" do
      end
    end
    context '新規登録がうまく行く時'do
      it "send_first_name、send_family_name、send_first_name_kana、send_family_name_kana、post_code、prefecture、city、address、user_idが存在すれば登録できること" do
      end
    end
  end
end

# it "send_first_nameがない場合は登録できないこと" do
#   send_information = build(:send_information,send_first_name:nil)
#   send_information.valid?
#   expect(send_information.errors[:send_first_name]).to include("を入力してください")
# end
# it "send_family_nameがない場合は登録できないこと" do
#   send_information = build(:send_information,send_family_name:nil)
#   send_information.valid?
#   expect(send_information.errors[:send_family_name]).to include("を入力してください")
# end
# it "send_first_name_kanaがない場合は登録できないこと" do
#   send_information = build(:send_information,send_first_name_kana:nil)
#   send_information.valid?
#   expect(send_information.errors[:send_first_name_kana]).to include("を入力してください")
# end
# it "send_family_name_kanaがない場合は登録できないこと" do
#   send_information = build(:send_information,send_family_name_kana:nil)
#   send_information.valid?
#   expect(send_information.errors[:send_family_name_kana]).to include("を入力してください")
# end
# it "post_codeがない場合は登録できないこと" do
#   send_information = build(:send_information,post_code:nil)
#   send_information.valid?
#   expect(send_information.errors[:post_code]).to include("を入力してください")
# end
# it "prefectureがない場合は登録できないこと" do
#   send_information = build(:send_information,prefecture:nil)
#   send_information.valid?
#   expect(send_information.errors[:prefecture]).to include("を入力してください")
# end
# it "cityがない場合は登録できないこと" do
#   send_information = build(:send_information,city:nil)
#   send_information.valid?
#   expect(send_information.errors[:city]).to include("を入力してください")
# end
# it "addressがない場合は登録できないこと" do
#   send_information = build(:send_information,address:nil)
#   send_information.valid?
#   expect(send_information.errors[:address]).to include("を入力してください")
# end
# it "user_idがない場合は登録できないこと" do
#   send_information = build(:send_information,user_id:nil)
#   send_information.valid?
#   expect(send_information.errors[:user_id]).to include("を入力してください")
# end
# it "send_first_name、send_family_name、send_first_name_kana、send_family_name_kana、post_code、prefecture、city、address、user_idが存在すれば登録できること" do
#   send_information = build(:send_information)
#   expect(send_information).to be_valid
# end
# end