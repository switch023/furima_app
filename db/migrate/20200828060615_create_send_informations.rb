class CreateSendInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :send_informations do |t|
      t.string        :send_first_name,null:false
      t.string        :send_family_name,null:false
      t.string        :send_first_name_kana,null:false
      t.string        :send_family_name_kana,null:false
      t.integer       :post_code,null:false
      t.string        :prefecture,null:false
      t.string        :city,null:false
      t.string        :address,null:false
      t.string        :building_name
      t.integer       :phone_number,null:false,unique:true
      t.references    :user,null:false,foregin_key:true
      t.timestamps
    end
  end
end
