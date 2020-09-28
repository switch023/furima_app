class SendInformationsController < ApplicationController

  def new
    @send_information = SendInformation.new
  end

  def create
    @send_information = SendInformation.new(send_information_params)
    if @send_information.save
      redirect_to mypages_path(@send_information), notice:'送付情報が登録されました'
    else
      flash.now[:alert] = '送付情報を入力してください。'
      render :new
    end
  end

  def edit
    @send_information = SendInformation.find(params[:id])

  end

  def update
    @send_information = SendInformation.find(params[:id])
    if @send_information.update(send_information_params)
      redirect_to mypages_path(@send_information), notice:'送付情報が登録されました'
    else
      flash.now[:alert] = '送付情報を入力してください。'
      render :edit
    end
  end

  private
  def send_information_params
    params.require(:send_information).permit(:send_first_name, :send_family_name, :send_first_name_kana, :send_family_name_kana, :post_code, :prefecture, :city, :address, :building_name, :phone_number).merge(user_id: current_user.id)
  end

end