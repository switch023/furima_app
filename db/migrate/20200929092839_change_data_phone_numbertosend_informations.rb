class ChangeDataPhoneNumbertosendInformations < ActiveRecord::Migration[5.2]
  def change
    change_column :send_informations, :phone_number, :string

  end
end
