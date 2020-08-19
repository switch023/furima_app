class CreateItemImages < ActiveRecord::Migration[5.2]
  def change
    create_table :item_images do |t|
      t.references      :items, null: false, foregin_key: true
      t.string          :url,   null: false
      t.timestamps
      validates :item_image, presence: true
    end
  end
end
