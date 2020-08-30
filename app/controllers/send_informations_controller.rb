class SendInformationsController < ApplicationController

  def new
    @send_information = SendInformation.new
  end

  def create
    SendInformation.create(send_information_params)
    redirect_to = mypage_path
  end

  private
  def send_information_params
    params.require(:send_information).permit(:send_first_name, :send_family_name, :send_first_name_kana, :send_family_name_kana, :post_code, :prefecture, :city, :address, :building_name, :phone_number).merge(user_id: current_user.id)
  end

end
 