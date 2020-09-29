class ChangeDatatypePostCodeOfSendInformations < ActiveRecord::Migration[5.2]
  def change
    change_column :send_informations, :post_code, :string
  end
end
