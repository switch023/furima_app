class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string          :name, null: false
      t.text            :introduction, null: false
      t.integer         :price, null: false
      t.text            :brand
      t.references      :category, null: false, foregin_key: true
      t.references      :item_condition, null: false, foregin_key: true
      t.references      :postage_payer, null: false, foregin_key: true
      t.references      :prefecture_code, null: false, foregin_key: true
      t.references      :preparation_day, null: false, foregin_key: true
      t.references      :postage_type, null: false, foregin_key: true
      t.references      :buyer, foregin_key: true
      t.references      :seller, null: false, foregin_key: true
      t.timestamps
    end
  end
end